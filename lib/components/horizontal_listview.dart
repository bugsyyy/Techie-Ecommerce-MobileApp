import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: 'images/categories/cpu2.png',
              image_caption: 'CPU'),
          Category(
              image_location: 'images/categories/mobo.png',
              image_caption: 'MOBO'),
          Category(
              image_location: 'images/categories/gpu.png',
              image_caption: 'GPU'),
          Category(
              image_location: 'images/categories/ram3.png',
              image_caption: 'RAM'),
          Category(
              image_location: 'images/categories/storage.png',
              image_caption: 'STORAGE'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category(
      {Key? key, required this.image_location, required this.image_caption})
      : super(key: key);

  final String image_location;
  final String image_caption;

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
              child: Text(
                image_caption,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
