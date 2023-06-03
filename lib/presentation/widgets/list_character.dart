import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:rick_and_morty/data/api/api_character.dart';
import 'package:rick_and_morty/domain/character.dart';
import 'package:rick_and_morty/presentation/widgets/card_character.dart';

final userProvider = Provider<ApiServise>((ref) => ApiServise());

final characterListProvider = FutureProvider<List<Character>>((ref) async {
  return ref.watch(userProvider).fetchAllCharacter();
});

class ListCharacter extends ConsumerWidget {
  const ListCharacter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final charactersDataList = ref.watch(characterListProvider);
    return charactersDataList.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
      data: (charactersDataList) {
        List<Character> characters = charactersDataList.map((e) => e).toList();
        return ResponsiveGridList(
          horizontalGridSpacing: 0, // Horizontal space between grid items
          verticalGridSpacing: 0, // Vertical space between grid items
          horizontalGridMargin: 30, // Horizontal space around the grid
          verticalGridMargin: 15, // Vertical space around the grid
          minItemWidth: 300,  // The minimum item width (can be smaller, if the layout constraints are smaller)
          minItemsPerRow: 1, // The minimum items to show in a single row. Takes precedence over minItemWidth
          maxItemsPerRow: 3, // The maximum items to show i
          children: [
            for (final person in characters) CardCharacter(character: person),
          ],
        );
      },
    );
  }
}
