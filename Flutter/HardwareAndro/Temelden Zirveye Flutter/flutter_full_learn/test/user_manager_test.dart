import 'package:flutter_full_learn/303/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test('User calculate ', () {
    final users = [
      const GenericUser('Enes', '11', 10),
      const GenericUser('Enes', '11', 20),
      const GenericUser('Enes', '11', 10),
    ];
    final userManagement = UserManagement(const AdminUser('vadmin', '1', 15, 1));
    final result = userManagement.calculateMoney(users);

    final respnse = userManagement.showNames<String>(users);

    expect(result, 55);
  });
}
