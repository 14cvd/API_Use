import 'package:url_launcher/url_launcher.dart';

class LaunchUrl {
  static Future<void> launcher(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception("Could not url $url");
    }
  }
}
