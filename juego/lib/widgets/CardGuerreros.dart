// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:juego/models/Heroes.dart';
import 'package:juego/widgets/InfoGuerreros.dart';
import 'package:get/get.dart';


class CardGuerreros extends StatelessWidget {
  final Heroes hero;

  const CardGuerreros(this.hero, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TabInfoGuerreros(hero),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 135.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), // Borde redondeado
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5, 
                      offset: const Offset(0, 3), 
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0), // Borde redondeado para la imagen
                  child: Image.network(
                    hero.imagen,
                    height: 180.0,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  hero.nombre,
                  style: const TextStyle(fontSize: 18.0),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                         Text(
                          "vida: ${hero.vida}",
                          style: const TextStyle(fontSize: 15.0),
                        ),
                        IconButton(
                          onPressed: () {
                            Get.to( TabInfoGuerreros(hero));
                          },
                          icon: const Icon(Icons.info),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}