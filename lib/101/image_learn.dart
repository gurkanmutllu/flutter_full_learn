import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: PngImage(name: ImageItems().apple),
          ),
          Image.network(
            'https://e7.pngegg.com/pngimages/852/776/png-clipart-book-euclidean-books-and-apple-reading-green-apple.png',
            errorBuilder: (context, error, stackTrace) =>
                Icon(Icons.abc_outlined),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "apple_and_book";
  final String apple = "Back_to_School-512";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
