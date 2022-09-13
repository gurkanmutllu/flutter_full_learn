import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_full_learn/303/mobx_image_picker/model/image_upload_response.dart';

class ImageUploadService {
  final Dio dio;

  ImageUploadService(this.dio);

  Future<ImageUploadResponse?> uploadToImageServer(Uint8List byteArray, String name,
      {void Function(int, int)? onSendProgress}) async {
    final response = await dio.post('full%2F$name.vb.png', data: byteArray, onSendProgress: onSendProgress);
    if (response.statusCode == HttpStatus.ok) {
      // final responseData = Null check
      return ImageUploadResponse.fromJson(response.data);
    }
    return null;
  }
}
