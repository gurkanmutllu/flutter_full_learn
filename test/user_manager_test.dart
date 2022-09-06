import 'package:flutter_full_learn/303/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(
    () {},
  );
  test('User Calculate', () {
    final users = [
      GenericUser('gm', '11', 15),
      GenericUser('gm1', '12', 15),
      GenericUser('gm2', '13', 30),
    ];

    final userManagement = UserManagement(AdminUser('gadmin', '22', 100, 1));

    final result = userManagement.calculateMoney(users);
    final response = userManagement.showNames<String>(users);

    expect(result, 160);
  });
}
