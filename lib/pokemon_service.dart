import 'package:pokedex/pokemon_list_model.dart';
import 'package:pokedex/pokemon_provider.dart';

class PokemonService {
  PokemonProvider _pokemonProvider = new PokemonProvider();
  Future<PokemonListModel> getPokemonList() {
    return _pokemonProvider.getPokemonList();
  }
  //TODO
  //create new service method for get pokemon detail
}
