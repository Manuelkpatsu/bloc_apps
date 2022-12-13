import 'package:firebase_login_app/login/login.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

void main() {
  const email = Email.dirty('email');
  const password = Password.dirty('password');

  group('LoginState', () {
    test('supports value comparisons', () {
      expect(const LoginState(), const LoginState());
    });

    test('returns same object when no properties are passed', () {
      expect(const LoginState().copyWith(), const LoginState());
    });

    test('returns object with updated status when status is passed', () {
      expect(
        const LoginState().copyWith(status: FormzStatus.pure),
        const LoginState(),
      );
    });

    test('returns object with updated email when email is passed', () {
      expect(
        const LoginState().copyWith(email: email),
        const LoginState(email: email),
      );
    });

    test('returns object with updated password when password is passed', () {
      expect(
        const LoginState().copyWith(password: password),
        const LoginState(password: password),
      );
    });
  });
}
