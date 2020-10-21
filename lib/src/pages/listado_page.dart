import 'package:flutter/material.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:evaluacion/src/providers/comidas_provider.dart';
import 'package:evaluacion/src/widgets/card_swiper_widget.dart';

class ListadoPage extends StatelessWidget {
  final comidasProvider = new ComidasProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Listado de Comidas'),
          backgroundColor: Colors.black87,
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.search),
          //     onPressed: () {
          //       showSearch(
          //       context: context,
          //       delegate: DataSearch(),
          //       query: 'Hola'
          //       );
          //     },
          //   )
          // ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _swiperTarjetas(),
              //_footer(context)
            ],
          ),
        ));
  }

  Widget _swiperTarjetas() {
    return FutureBuilder(
      future: comidasProvider.getComidas(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return CardSwiper(comidas: snapshot.data);
        } else {
          return Container(
              height: 400.0, child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
