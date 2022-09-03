import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  Future<void> launchUrl(Uri _url) async {
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    }
  }
}
