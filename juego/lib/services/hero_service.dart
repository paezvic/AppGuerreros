import 'package:flutter/services.dart' show rootBundle;
import 'package:juego/models/Heroes.dart';

class HeroService {
  Future<List<Heroes>> fetchHeroes() async {
    final String response = await rootBundle.loadString('assets/heroes.json');
    return heroesFromJson(response);
  }
}
