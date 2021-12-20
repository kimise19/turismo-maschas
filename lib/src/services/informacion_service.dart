import 'package:http/http.dart' as http;
import 'package:mashcas_turismo/src/models/informacion_model.dart';
import 'dart:convert';

class InformacionService {
  InformacionService();

  Future<List<Informacion>?> getInformacion() async {
    List<Informacion> result = [];
    try {
      var url =
          Uri.parse('https://turismmascha-backend.web.app/api/informacion');
      var response = await http.get(url);
      if (response.body.isEmpty) return result;
      List<dynamic> listBody = json.decode(response.body);
      for (var item in listBody) {
        var info = Informacion.fromJson(item);
        result.add(info);
      }
      return result;
    } catch (ex) {
      // ignore: avoid_print
      print(ex);
      return null;
    }
  }
}
