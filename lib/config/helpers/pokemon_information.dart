//  //   ///
//  IMPORT LIBRARIES
import 'package:dio/dio.dart';
//  IMPORT FILES
//  //   ///

class PokemonInformation {
  static Future<String> getPokemonName(int pokemonId) async {
    final Dio dio = Dio();
    await Future.delayed(const Duration(seconds: 2));
    final url = 'https://pokeapi.co/api/v2/pokemon/$pokemonId';

    try {
      final Response response = await dio.get(url);
      return response.data['name'] ?? 'Nombre no se encontro';
    } catch (e) {
      return 'Este nombre no pudo ser obtenido';
    }
  }
}
