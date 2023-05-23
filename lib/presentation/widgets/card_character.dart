import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/character.dart';

class CardCharacter extends StatelessWidget {
  final Character character;
  const CardCharacter({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            character.image.toString(),
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              children: [
                Text(character.name.toString()),
                Text(character.gender.toString()),
                Text(character.status.toString()),
                Text(character.location.toString()),
              ],
            ),
          )
        ],
      ),
    );
    // child: Row(children: [
    //   Expanded(
    //       child:
    //           Image.network(character.image.toString(), fit: BoxFit.cover)),
    //   Column(
    //     children: [
    //       Text(character.name.toString()),
    //       Text(character.gender.toString()),
    //       Text(character.status.toString()),
    //       Text(character.location.toString()),
    //     ],
    //   )
    // ]),
  }
}
