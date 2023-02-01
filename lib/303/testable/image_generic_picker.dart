// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/utility/image_upload.dart';
import 'package:flutter_full_learn/product/utility/image_upload_manager.dart';

class ImagePickerGenericView extends StatefulWidget {
  const ImagePickerGenericView({super.key});

  @override
  State<ImagePickerGenericView> createState() => _ImagePickerGenericViewState();
}

class _ImagePickerGenericViewState extends State<ImagePickerGenericView> {
  final _imageUploadManager = ImageUploadManager();
  late final ImageUploadCustomManager _imageUploadCustomManager;

  @override
  void initState() {
    super.initState();
    _imageUploadCustomManager = ImageUploadCustomManager(LibraryImageUpload());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                _imageUploadManager.fetchFromLibrary();
              },
              child: const Text('Fetch from gallery')),
          ElevatedButton(
              onPressed: () {
                _imageUploadManager.fetchFromCamera();
              },
              child: const Text('Fetch from normal')),
          ElevatedButton(
              onPressed: () {}, child: const Text('Fetch from multiple')),
        ],
      ),
    );
  }
}
