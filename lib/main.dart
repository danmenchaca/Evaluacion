import 'package:flutter/material.dart';
import 'package:evaluacion/src/routes/routes.dart';
//import 'package:evaluacion/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evaluacion App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getAppLocationRoutes(),
      // onGenerateRoute: (RouteSettings settings) {
      //   //print('ruta llamada: $settings');
      //   return MaterialPageRoute(builder: (BuildContext context) => HomePage());
      // },
    );
  }
}
