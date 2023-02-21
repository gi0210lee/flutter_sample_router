import 'package:flutter/material.dart';
import 'package:sample_router/detail.dart';
import 'package:sample_router/home.dart';

class Routes {
  static const String rootRoute = '/';
  static const String detailRoute = '/detail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    Uri url = Uri.parse(settings.name!);
    String path = '/${url.pathSegments.isEmpty ? '' : url.pathSegments.first}';
    switch (path) {
      case rootRoute:
        return pageRoute(settings, const Home());
      case detailRoute:
        return pageRoute(settings, Detail(id: url.pathSegments.last));
      default:
        return pageRoute(settings, const Home());
    }
  }

  static MaterialPageRoute<dynamic> pageRoute(
      RouteSettings settings, Widget child) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => child,
    );
  }
}
