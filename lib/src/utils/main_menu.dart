import 'package:flutter/material.dart';
import 'package:mashcas_turismo/src/widgets/informacion.widget.dart';
import 'package:mashcas_turismo/src/widgets/location_widget.dart';
import 'package:mashcas_turismo/src/widgets/turismo_widget.dart';

class ItemMenu {
  String title;
  IconData icon;
  ItemMenu(this.icon, this.title);
}

List<ItemMenu> menuOptions = [
  ItemMenu(Icons.home_filled, "Inicio"),
  ItemMenu(Icons.search, "Explorar"),
  ItemMenu(Icons.favorite, "Informacion"),
];

List<Widget> homeWidgets = [
  const LocationWidget(),
  const TurismoWidget(),
  const InformacionWidget()
];
