import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/character.dart';

class CardCharacter extends StatelessWidget {
  final Character character;
  const CardCharacter({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: [
        Image.network(character.image.toString()),
        Column(
          children: [
            Text(character.name.toString()),
            Text(character.gender.toString()),
            Text(character.status.toString()),
            Text(character.location.toString()),
          ],
        )
      ]),
    );
  }
}
