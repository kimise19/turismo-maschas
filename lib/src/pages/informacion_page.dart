import 'package:flutter/material.dart';
import 'package:mashcas_turismo/src/models/informacion_model.dart';

class InformacionPage extends StatelessWidget {
  const InformacionPage({Key? key, required this.informacion})
      : super(key: key);
  final Informacion informacion;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(informacion.nombre ?? ""),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Información " + informacion.nombre.toString(),
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Descripcion: " + informacion.descripcion.toString(),
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          )),
    );
  }
}
