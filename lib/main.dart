import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pictorial/Category.dart';
import 'package:pictorial/HardCodedData.dart';

import 'PhotoAttributes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<PhotoAttributes> allImages = [];
  List<PhotoAttributes> impressionism = [];
  List<PhotoAttributes> modernism = [];
  List<PhotoAttributes> cubism = [];
  List<PhotoAttributes> surreilism = [];
  List<PhotoAttributes> expressionism = [];
  List<PhotoAttributes> abstract = [];

  @override
  Widget build(BuildContext context) {
//    pageLoad();
    return Scaffold(
        appBar: AppBar(
          title: Text("Pictorial"),
        ),
        body: FutureBuilder(
            future: getPhotos(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Scaffold(
                  body: generateCategories(),
                  floatingActionButton: floatingButton(),
                );
              } else {
                return SpinKitWave(color: Colors.blueGrey,);
              }
            }
        )
    );
  }

  Future<void> getPhotos() async {
    if (allImages.length == 0) {
      HttpClientRequest request = await HttpClient().get(
          '18.237.100.203', 8000, '/getPhotos');
      HttpClientResponse response = await request.close();
      response.transform(utf8.decoder).listen(((contents) {
        final List<dynamic> parsedJson = json.decode(contents);
        for (var i = 1; i < parsedJson.length; i++) {
          var photosWithMeta = PhotoAttributes.fromJson(parsedJson[i]);
          allImages.add(photosWithMeta);
        }
      }));
    }
  }

  categorize() {
    for (var i = 0; i < allImages.length; i ++) {
      switch (int.parse(allImages[i].imageMeta.categoryID)) {
        case 0:
          {
            impressionism.add(allImages[i]);
            break;
          }
        case 1:
          {
            modernism.add(allImages[i]);
            break;
          }
        case 2:
          {
            cubism.add(allImages[i]);
            break;
          }
        case 3:
          {
            surreilism.add(allImages[i]);
            break;
          }
        case 4:
          {
            expressionism.add(allImages[i]);
            break;
          }
        case 5:
          {
            abstract.add(allImages[i]);
            break;
          }
      }
    }
  }

  Widget generateCategories() {
    if (impressionism.length == 0) {
      categorize();
    }
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(35),
      crossAxisSpacing: 12,
      mainAxisSpacing: 9,
      crossAxisCount: 2,
      children: <Widget>[
        GestureDetector(
          child: Container(
              child: new Card(
                  child: Column(
                    children: <Widget>[
                      new Image.network(
                          'https://storage.googleapis.com/pictorial-images/images/monet-sunset-in-venice.jpg'),
                      ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              new Text("Impressionism",
                                  style: TextStyle(fontSize: 18))
                            ],
                          ))
                    ],
                  ))),
          onTap: () =>
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => Category(impressionism))),
        ),
        GestureDetector(
          child: Container(
              child: new Card(
                  child: Column(
                    children: <Widget>[
                      new Image.network(
                          'https://storage.googleapis.com/pictorial-images/images/modernism.jpg'),
                      ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              new Text(
                                  "Modernism", style: TextStyle(fontSize: 18))
                            ],
                          ))
                    ],
                  ))),
          onTap: () =>
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => Category(modernism))),
        ),
        GestureDetector(
          child: Container(
              height: 210,
              child: new Card(
                  child: Column(
                    children: <Widget>[
                      new Image.network(
                          'https://storage.googleapis.com/pictorial-images/images/cubism.jpg'),
                      ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              new Text("Cubism", style: TextStyle(
                                  fontSize: 18))
                            ],
                          ))
                    ],
                  ))),
          onTap: () =>
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Category(cubism))),
        ),
        GestureDetector(
          child: Container(
              child: new Card(
                  child: Column(
                    children: <Widget>[
                      new Image.network(
                          'https://media.mutualart.com/Images/2018_08/08/10/100534662/b344ccb1-3346-4f81-880c-b7b03a71806e_570.Jpeg'),
                      ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              new Text(
                                  "Surreilism", style: TextStyle(
                                  fontSize: 18))
                            ],
                          ))
                    ],
                  ))),
          onTap: () =>
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => Category(surreilism))),
        ),
        GestureDetector(
          child: Container(
              child: new Card(
                  child: Column(
                    children: <Widget>[
                      new Image.network(
                          'https://storage.googleapis.com/pictorial-images/images/expressionism.jpg'),
                      ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              new Text("Expressionism",
                                  style: TextStyle(fontSize: 18))
                            ],
                          ))
                    ],
                  ))),
          onTap: () =>
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => Category(expressionism))),
        ),
        GestureDetector(
          child: Container(
              child: new Card(
                  child: Column(
                    children: <Widget>[
                      new Image.network(
                          'https://storage.googleapis.com/pictorial-images/images/abstract.jpg'),
                      ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              new Text(
                                  "Abstract", style: TextStyle(fontSize: 18))
                            ],
                          ))
                    ],
                  ))),
          onTap: () =>
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => Category(abstract))),
        ),
      ],
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }

  Widget floatingButton() {
    return FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: (){
    showDialog(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
    content: new SingleChildScrollView(
    child: new ListBody(
    children: <Widget>[
      ListTile(
        onTap: () => ImagePicker.pickImage(
            source: ImageSource.camera),
        title: Text("Camera"),
      ),
      ListTile(
        onTap: () => ImagePicker.pickImage(
            source: ImageSource.gallery),
        title: Text("Gallery"),
      ),
    ],
    ),
    ),
    );
    }
    );
    }
    );
  }
  }
