import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();

class Navigation {
  static toNamed({required routeName, Object? arguments}) {
    navigatorkey.currentState?.pushNamed(routeName, arguments: arguments);
  }

  static replaceNamed({required routeName, Object? arguments}) {
    navigatorkey.currentState?.pushReplacementNamed(routeName, arguments: arguments);
  }

  static replaceuntilNamed({required routeName, Object? arguments}) {
    navigatorkey.currentState?.pushNamedAndRemoveUntil(
      routeName, (Route<dynamic> route) => false, 
      arguments: arguments);
  }

  static back() => navigatorkey.currentState?.pop();
}