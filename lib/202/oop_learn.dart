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
    return true;
  }

  void smsShare() {}

  @override
  void share(params) {}
}

class SMSDownload implements IFileDownload {
  @override
  bool? downlaodItem(FileItem? fileItem) {
    throw UnimplementedError();
  }

  @override
  // ignore: override_on_non_overriding_member
  void share(params) {}

  @override
  void toShare(String path) {}
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

mixin ShareMixin on IFileDownload {
  void share(params);
}
