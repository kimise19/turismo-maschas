import 'package:flutter/material.dart';
import 'package:mashcas_turismo/src/models/informacion_model.dart';
import 'package:mashcas_turismo/src/pages/informacion_page.dart';

class InformacionCard extends StatelessWidget {
  const InformacionCard({Key? key, required this.modelI}) : super(key: key);
  final Informacion modelI;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      onTap: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  InformacionPage(informacion: modelI)),
        );
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(modelI.imagen1Actividad.toString()),
        radius: 120,
      ),
      title: Text("Actividad: " + modelI.tituloActividad.toString(),
          style: const TextStyle(fontSize: 15)),
      subtitle: Text(modelI.descripcion.toString(),
          style: const TextStyle(fontSize: 15)),
    ));
  }
}
