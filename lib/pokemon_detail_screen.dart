import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PokemonDetailScreen extends StatelessWidget {
  PokemonDetailScreen({required this.title, required this.url});
  String title;
  String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        //TODO Display pokemon detail from url
        body: Center(child: Text(this.title)));
  }
}
