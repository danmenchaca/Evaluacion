import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'food': Icons.food_bank,
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono], color: Colors.blue);
}
