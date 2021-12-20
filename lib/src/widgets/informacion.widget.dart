import 'package:flutter/material.dart';
import 'package:mashcas_turismo/src/models/informacion_model.dart';
import 'package:mashcas_turismo/src/services/informacion_service.dart';
import 'package:mashcas_turismo/src/widgets/inforamcion_card.dart';

class InformacionWidget extends StatefulWidget {
  const InformacionWidget({Key? key}) : super(key: key);

  @override
  State<InformacionWidget> createState() => _InforamcionWidgetState();
}

class _InforamcionWidgetState extends State<InformacionWidget> {
  final InformacionService _turismoService = InformacionService();
  List<Informacion>? _listaInformacion;

  @override
  void initState() {
    super.initState();
    _downloadPlaces();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _listaInformacion == null
            ? const Center(
                child: SizedBox.square(
                    dimension: 50.0, child: CircularProgressIndicator()))
            : _listaInformacion!.isEmpty
                ? const Center(child: Text("No hay Lugares"))
                : ListView(
                    children: _listaInformacion!
                        .map((e) => InformacionCard(modelI: e))
                        .toList(),
                  ));
  }

  _downloadPlaces() async {
    _listaInformacion = await _turismoService.getInformacion();
    if (mounted) {
      setState(() {});
    }
  }
}
