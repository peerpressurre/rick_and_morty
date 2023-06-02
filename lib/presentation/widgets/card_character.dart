import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/character.dart';

class CardCharacter extends StatelessWidget {
  final Character character;
  const CardCharacter({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration: BoxDecoration(
          color: Colors.blueGrey.shade100,
          border: Border.all(width: 30, color: Colors.blueGrey.shade600)
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.only(top: 20),
             child:
                Container(
              decoration: BoxDecoration(
              border: Border.all(width: 30, color: Colors.blueGrey.shade600)
      ),
             child: Image.network(
               character.image.toString(),
               fit: BoxFit.cover,
             ),
                )
              ),  
                Padding(padding: const EdgeInsets.only(top: 10),
                child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(character.name.toString(), style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 21)),
      Text(character.gender.toString(), style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
      Text(character.status.toString(), style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
      Text(character.location.toString(), style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
    ],
                ),
                ),
          ],
        ),
      );
  }
}
