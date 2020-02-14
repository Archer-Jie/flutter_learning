import 'package:flutter/material.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../Tabs.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';

final routes = {
  '/tabs' : (context) => Tabs(),
  '/form': (context) => FormPage(),
  '/search': (context,{arguments}) => SearchPage(arguments: arguments),
  '/product': (context) => ProductPage(),
  '/productinfo' : (context,{arguments}) => ProductInfoPage(arguments: arguments),
};

var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context,
              arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
