import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:async';

import 'package:evaluacion/src/models/comida_model.dart';

class ComidasProvider {
  final String _url = 'https://run.mocky.io/v2/5dc59f0d3200007200769c29/';

  //bool _cargando = false;

  //List<Comidas> _comidas = new List();

  Future<List<Comida>> getComidas() async {
    //final url = Uri.https(_url, '', {'api_key': '', 'language': ''});

    return await _procesarRespuesta(_url);
  }

  Future<List<Comida>> _procesarRespuesta(String url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    final comidas = new Comidas.fromJsonList(decodedData);

    return comidas.items;
  }
}
