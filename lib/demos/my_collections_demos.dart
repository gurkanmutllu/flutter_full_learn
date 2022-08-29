import 'package:flutter/material.dart';

class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: PaddingUtility().paddingHorizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CategoryCard(
            model: _items[index],
          );
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({Key? key, required CollectionModel model})
      : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingAll,
          child: Column(
            children: [
              Expanded(child: Image.asset(_model.imagePath)),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text(_model.title), Text('${_model.price} eth')],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(imagePath: ProjectImages.imageCollection, title: 'Abstract Art 1', price: 3.4),
      CollectionModel(imagePath: ProjectImages.imageCollection, title: 'Abstract Art 2', price: 3.4),
      CollectionModel(imagePath: ProjectImages.imageCollection, title: 'Abstract Art 3', price: 3.4),
      CollectionModel(imagePath: ProjectImages.imageCollection, title: 'Abstract Art 4', price: 3.4),
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
  final paddingAll = const EdgeInsets.all(20);
  final paddingBottom = EdgeInsets.only(bottom: 20);
}

class ProjectImages {
  static const imageCollection = 'assets/png/image_collection.png';
}
