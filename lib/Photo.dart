import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pictorial/ColorInfo.dart';
import 'package:pictorial/ColorScoreModel.dart';
import 'package:pictorial/PhotoAttributes.dart';
import 'package:pie_chart/pie_chart.dart';

class Photo extends StatefulWidget {
  Photo(this.currentPhoto);

  final PhotoAttributes currentPhoto;

  @override
  PhotoState createState() {
    return PhotoState();
  }
}

class PhotoState extends State<Photo> {
  List<ColorScoreModel> allColors = [];
  Map<String, double> dataMap = new Map();

  @override
  Widget build(BuildContext context) {
    var jsonBody = widget.currentPhoto.toJson();
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Selected Photo"),
        ),
        body: FutureBuilder(
          future: getPhotoColors(jsonBody),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView(
                children: generateColorTiles(),
              );
            } else {
              return SpinKitWave(color: Colors.blueGrey);
            }
          },
        ));
  }

  Future<void> getPhotoColors(jsonBody) async {
    HttpClientRequest request =
        await HttpClient().post('18.237.100.203', 8000, '/getColors')
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(jsonBody));
    HttpClientResponse response = await request.close();
    response.transform(utf8.decoder).listen(((contents) {
      final List<dynamic> parsedJson = json.decode(contents);
      for (var i = 0; i < parsedJson.length; i++) {
        var colorScoreM = ColorScoreModel.fromJson(parsedJson[i]);
        allColors.add(colorScoreM);
      }
    }));
  }

  List<Widget> generateColorTiles() {
    List<Widget> allTiles = [];
    List<String> colorHexsStrings = [];
    List<Color> colorHexs = [];

    allTiles.add(
      Center(
        child: Container(
            child: new Card(
          child: new Image.network(widget.currentPhoto.displayURL),
        )),
      ),
    );
    allTiles.add(new Card(
      child: new ListTile(
        title: Text("Title: " + widget.currentPhoto.imageMeta.title),
        trailing: Text("Artist: " + widget.currentPhoto.imageMeta.artist),
      ),
    ));
    dataMap.clear();
    for (int i = 0; i < allColors.length; i++) {
      var hexString = "0x" +
          Color.fromRGBO(allColors[i].color.red, allColors[i].color.green,
                  allColors[i].color.blue, 1)
              .value
              .toRadixString(16)
              .substring(2, 8);
      var test = Color.fromRGBO(allColors[i].color.red,
              allColors[i].color.green, allColors[i].color.blue, 1)
          .value
          .toRadixString(16);
      colorHexsStrings.add(hexString);
      dataMap.putIfAbsent(
          colorHexsStrings[i], () => (allColors[i].score * 100));
      colorHexs.add(Color(int.parse(test, radix: 16)));
    }

    allTiles.add(
      Container(
          height: 280,
          child: new Card(
            child: Center(
                child: PieChart(
              dataMap: dataMap,
              legendFontColor: Colors.blueGrey[900],
              legendFontSize: 14.0,
              legendFontWeight: FontWeight.w500,
              animationDuration: Duration(milliseconds: 800),
              chartLegendSpacing: 32.0,
              chartRadius: MediaQuery.of(context).size.width / 2.0,
              showChartValuesInPercentage: true,
              showChartValues: true,
              showChartValuesOutside: true,
              chartValuesColor: Colors.blueGrey[900].withOpacity(0.9),
              colorList: colorHexs,
              showLegends: false,
              decimalPlaces: 1,
              showChartValueLabel: true,
              chartValueFontSize: 12,
              chartValueFontWeight: FontWeight.bold,
              chartValueLabelColor: Colors.white,
              initialAngle: 0,
            )),
          )),
    );
//      allTiles.add(
//        new Card(
//          child: new ListTile(
//            title: Text("Color:"),
//            trailing: Text("Percent in photo"),
//          ),
//        )
//      );
    for (int i = 0; i < allColors.length; i++) {
      allTiles.add(GestureDetector(
        child: new Card(
            child: new ListTile(
          title: Text("#" +
              Color.fromRGBO(allColors[i].color.red, allColors[i].color.green,
                      allColors[i].color.blue, 1)
                  .value
                  .toRadixString(16)
                  .substring(2, 8)),
          leading: new RawMaterialButton(
            onPressed: () {},
            shape: new CircleBorder(),
            elevation: 2.0,
            fillColor: Color.fromRGBO(allColors[i].color.red,
                allColors[i].color.green, allColors[i].color.blue, 1),
            padding: const EdgeInsets.all(15.0),
          ),
        )),
        onTap: () {
          var colorHex = Color.fromRGBO(allColors[i].color.red, allColors[i].color.green, allColors[i].color.blue, 1).value.toRadixString(16).substring(2, 8);
          var colorDescription = ColorInfo().getColorDescription("0x" + colorHex);
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  title: Text("Color Information: #" + colorHex),
                  content: (Text(colorDescription)),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text("OK"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              });
        },
      ));
    }
    return allTiles;
  }
}
