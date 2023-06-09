import 'dart:convert';

import 'package:http/http.dart';
import 'package:pokedex/pokemon_list_model.dart';

class PokemonProvider {
  Future<PokemonListModel> getPokemonList() async {
    var uri = Uri.https('pokeapi.co', 'api/v2/pokemon');
    Response res = await get(uri);
    if (res.statusCode == 200) {
      dynamic body = jsonDecode(res.body);
      PokemonListModel pModel = PokemonListModel.fromJson(body);
      return pModel;
    } else {
      print("Can't get response from server");
      throw "Server exception";
    }
  }

  //TODO
  //create new method for get single pokemon detail
  //return type is PokemonModel
}
