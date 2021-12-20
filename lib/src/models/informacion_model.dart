// To parse this JSON data, do
//
//     final informacion = informacionFromJson(jsonString);

import 'dart:convert';

Informacion informacionFromJson(String str) =>
    Informacion.fromJson(json.decode(str));

String informacionToJson(Informacion data) => json.encode(data.toJson());

class Informacion {
  Informacion({
    this.idInfo,
    this.nombre,
    this.descripcion,
    this.imagen,
    this.tituloActividad,
    this.imagen1Actividad,
  });

  String? idInfo;
  String? nombre;
  String? descripcion;
  String? imagen;
  String? tituloActividad;
  String? imagen1Actividad;

  factory Informacion.fromJson(Map<String, dynamic> json) => Informacion(
        idInfo: json["idInfo"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        imagen: json["imagen"],
        tituloActividad: json["titulo_actividad"],
        imagen1Actividad: json["imagen_1_actividad"],
      );

  Map<String, dynamic> toJson() => {
        "idInfo": idInfo,
        "nombre": nombre,
        "descripcion": descripcion,
        "imagen": imagen,
        "titulo_actividad": tituloActividad,
        "imagen_1_actividad": imagen1Actividad,
      };
}
