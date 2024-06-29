// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:juego/models/Heroes.dart';
import 'package:juego/utils/global.colors.dart';
import 'package:juego/widgets/ErrorMessage.dart';

class TabInfoGuerreros extends StatelessWidget {
  final Heroes hero;

  const TabInfoGuerreros(this.hero, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: GlobalColors.secondaryColor,
        elevation: 0,
      ),
      body: Container(
        color: GlobalColors.secondaryColor,
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 20),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0), 
                child: Image.network(
                  hero.imagen,
                  height: 180.0,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                hero.nombre,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Html(
                data: hero.descripcion, 
                style: {
                  "body": Style(
                    fontSize: FontSize(16.0),
                    color: Colors.white,
                  ),
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const ErrorMessage());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: GlobalColors.primaryColor, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: const EdgeInsets.all(16.0),
                  ),
                  child: const Text(
                    'Deseas pelear',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
