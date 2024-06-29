// ignore_for_file: file_names

import 'dart:convert';

List<Heroes> heroesFromJson(String str) =>
    List<Heroes>.from(json.decode(str).map((x) => Heroes.fromJson(x)));

String heroesToJson(List<Heroes> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Heroes {
  final String nombre;
  final String descripcion;
  final String vida;
  final String imagen;

  Heroes({
    required this.nombre,
    required this.descripcion,
    required this.vida,
    required this.imagen,
  });

  factory Heroes.fromJson(Map<String, dynamic> json) => Heroes(
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        vida: json["vida"],
        imagen: json["imagen"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "descripcion": descripcion,
        "vida": vida,
        "imagen": imagen,
      };
}
