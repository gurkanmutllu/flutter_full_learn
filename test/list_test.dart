import 'package:collection/collection.dart';
import 'package:flutter_full_learn/303/generic_learn.dart';
import 'package:flutter_full_learn/product/widget/card/high_card.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test('List best of', () {
    List<GenericUser> users = [
      const GenericUser('gm1', '10', 5),
      const GenericUser('gm2', '10', 10),
      const GenericUser('gm3', '10', 10),
    ];

    List<HighCard> highCards = users.map((e) {
      return HighCard(items: e.name.split('').toList());
    }).toList();
    try {
      final response = users.singleWhere(
        (element) => element.findUserName('x'),
        orElse: () {
          return const GenericUser('name', 'id', 0);
        },
      );
      print(response.name);
    } catch (e) {
      print(e);
    }

    print('${users.where((element) => element.money > 500)}');

    users.addAll([const GenericUser('name', 'id', 5)]);
    users.lastWhere((element) => element.id == 5);

    users.take(5);
    users.remove(const GenericUser('gm1', '10', 5));
    users.removeAt(2);
    users.removeWhere((element) => element.id == '11');
    users.indexOf(const GenericUser('gm1', '10', 5));
    final result = users.indexWhere((element) => element.id == '11');
    if (result >= 0) {
      users[result] = const GenericUser('a', 'b', 15);
    }

    // users.map((e) => e.money).map((e) => e.toString());
  });

  test('List of best collection', () {
    List<GenericUser> users = [
      const GenericUser('gm1', '10', 10),
      const GenericUser('gm2', '10', 10),
      const GenericUser('gm3', '10', 10)
    ];
    final response = users.singleWhereOrNull(
      (element) => element.findUserName('x'),
    );

    users.lastWhereOrNull((element) => element.id == 5);

    users.lastOrNull;
    users.forEachIndexed(
      (index, element) {},
    );

    print(response);
  });
}
