import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:master_ifab/services/pokemon_service.dart';
//import 'package:master_ifab/config/entities/pokemon.dart';

final pokemonProvider = FutureProvider.family((ref, id) async{

final (pokemon, error) = await PokemonService.getPokemon(id);

if (pokemon != null) return pokemon;
});