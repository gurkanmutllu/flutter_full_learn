import 'dart:io';
import 'package:flutter_full_learn/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class IFileDownload {
  bool? downlaodItem(FileItem? fileItem);
  void toShare(String path) async {
    await launchUrl(Uri.parse(path));
  }
}

class FileDownload extends IFileDownload with ShareMixin {
  @override
  bool? downlaodItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();
    print('a');
    return true;
  }

  void smsShare() {}

  @override
  void share(params) {
    // TODO: implement share
  }
}

class SMSDownload implements IFileDownload {
  @override
  bool? downlaodItem(FileItem? fileItem) {
    // TODO: implement downlaodItem
    throw UnimplementedError();
  }

  @override
  void share(params) {
    // TODO: implement share
  }

  @override
  void toShare(String path) {
    // TODO: implement toShare
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

mixin ShareMixin on IFileDownload {
  void share(params);
}
