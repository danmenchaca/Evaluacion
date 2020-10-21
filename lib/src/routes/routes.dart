import 'package:flutter/material.dart';
import 'package:evaluacion/src/pages/listado_page.dart';
import 'package:evaluacion/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAppLocationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'listado': (BuildContext context) => ListadoPage(),
  };
}
