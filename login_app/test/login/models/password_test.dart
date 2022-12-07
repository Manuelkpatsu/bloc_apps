import 'package:login_app/login/login.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const passwordString = 'mock-password';
  group('Password', () {
    group('constructors', () {
      test('pure creates correct instance', () {
        const password = Password.pure();
        expect(password.value, '');
        expect(password.pure, true);
      });

      test('dirty creates correct instance', () {
        const password = Password.dirty(passwordString);
        expect(password.value, passwordString);
        expect(password.pure, false);
      });
    });

    group('validator', () {
      test('returns empty error when password is empty', () {
        expect(
          const Password.dirty().error,
          PasswordValidationError.empty,
        );
      });

      test('is valid when password is not empty', () {
        expect(
          const Password.dirty(passwordString).error,
          isNull,
        );
      });
    });
  });
}
