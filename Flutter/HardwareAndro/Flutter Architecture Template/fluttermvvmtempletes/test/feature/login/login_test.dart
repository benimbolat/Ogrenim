import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(
    () {
      print("Here");
    },
  );

  test("User Login Fail Test", () {
    const isUserLogin = true;
    expect(isUserLogin, isTrue);
  });

  group(
    "User Login Full Test",
    () {
      test("User Login Fail Test", () {
        const isUserLogin = true;
        expect(isUserLogin, isTrue);
      });
      test("User Login Fail Test", () {
        const isUserLogin = true;
        expect(isUserLogin, isTrue);
      });
      test("User Login Fail Test", () {
        const isUserLogin = true;
        expect(isUserLogin, isTrue);
      });
    },
  );
}
