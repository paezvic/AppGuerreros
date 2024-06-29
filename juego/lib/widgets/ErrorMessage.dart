// ignore_for_file: file_names

import 'package:juego/ui/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:juego/utils/global.colors.dart';
import 'package:juego/widgets/CardMessage.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: GlobalColors.secondaryColor, 
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          physics: const BouncingScrollPhysics(),
          children:  [
            const Stack(
              children: [
              ],
            ),
            const SizedBox(height: 200), 
            Center(
                child: MiCardMessage(
              titulo: ' Upss !',
              icono: Icons.error_outline_outlined,
              subtitulo: 'Lo sentimos,\n en esta app no promovemos el odio. \n Lamentamos las molestias ocacionadas',
              colorBtn: GlobalColors.dangerColor,
              espBtn: 5,
              accionBtn: const Home(),
            ))
          ],
        ),
      ),
    );
  }
}
