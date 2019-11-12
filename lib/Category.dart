import 'package:flutter/material.dart';
import 'package:pictorial/Photo.dart';
import 'package:pictorial/PhotoAttributes.dart';

class Category extends StatefulWidget {

  Category(this.selectedCategory);
  final List<PhotoAttributes> selectedCategory;

  @override
  CategoryState createState() {
    return CategoryState();
  }
}

class CategoryState extends State<Category> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Selected Category"),
        ),
        body: generateGrid()
    );
  }

  Widget generateGrid() {
    // for(int i = 0; i<10;i++)
    return Center(
      child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 3,
          mainAxisSpacing: 2,
          crossAxisCount: 4,
          children: generatePhotoTiles()
      ),
    );
  }

  List<Widget> generatePhotoTiles() {
    List<Widget> tiles = [];
    for (int i=0; i<widget.selectedCategory.length; i++) {
      tiles.add(
        GestureDetector(
          child: Container(
              child: ListView(
                children: <Widget>[
                  new Image.network(
                      widget.selectedCategory[i].displayURL
                  ),
                ],
              )
          ),
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => Photo(widget.selectedCategory[i]))),
        ),
      );
    }
    return tiles;
  }
}
