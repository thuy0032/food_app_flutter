import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HorizontalList extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return Container(
     
      height: 80.0,
      child: ListView(
        
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/a1.png',
            image_caption: 'milk tea',
          ),


           Category(
            image_location: 'images/cats/e3.jpg',
            image_caption: 'ice-cream',
          ),

           Category(
            image_location: 'images/cats/s4.png',
            image_caption: 'drink',
          ),

           Category(
            image_location: 'images/cats/h6.png',
            image_caption: 'cafe',
          ),

        ]
      ),
    );
  }
}

class Category extends StatelessWidget{
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});
  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
            ),
          ),
        ),
        ),
      );
  }
}