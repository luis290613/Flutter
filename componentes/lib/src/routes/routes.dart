import 'package:flutter/material.dart';

import '../alert_page.dart';
import '../avatar_page.dart';
import '../home_page.dart';
import '../card_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => Avatar(),
    'card': (BuildContext context) => CardPage()
  };
}
