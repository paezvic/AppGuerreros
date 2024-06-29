// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:juego/models/Heroes.dart';
import 'package:juego/widgets/CardGuerreros.dart';
import 'package:juego/services/hero_service.dart'; 

class ListsGuerreos extends StatefulWidget {
  const ListsGuerreos({super.key});

  @override
  State<StatefulWidget> createState() => ListsHeroessState();
}

class ListsHeroessState extends State<ListsGuerreos> {
  List<Heroes>? guerreros;

  @override
  void initState() {
    super.initState();
    getGuerrero();
  }

  Future<void> getGuerrero() async {
    final heroes = await HeroService().fetchHeroes();
    setState(() {
      guerreros = heroes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.pinimg.com/originals/51/bb/d3/51bbd3a51d852af7e64dd89d25568b4a.gif'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 36.0, left: 16.0),
                child: const Text(
                  'Guerreros',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, 
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: guerreros == null
                      ? const Center(child: CircularProgressIndicator())
                      : GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                          ),
                          itemCount: guerreros!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CardGuerreros(guerreros![index]);
                          },
                        ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
