import 'package:firebase_login_app/sign_up/sign_up.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

void main() {
  const email = Email.dirty('email');
  const passwordString = 'password';
  const password = Password.dirty(passwordString);
  const confirmedPassword = ConfirmedPassword.dirty(
    password: passwordString,
    value: passwordString,
  );

  group('SignUpState', () {
    test('supports value comparisons', () {
      expect(const SignUpState(), const SignUpState());
    });

    test('returns same object when no properties are passed', () {
      expect(const SignUpState().copyWith(), const SignUpState());
    });

    test('returns object with updated status when status is passed', () {
      expect(
        const SignUpState().copyWith(status: FormzStatus.pure),
        const SignUpState(),
      );
    });

    test('returns object with updated email when email is passed', () {
      expect(
        const SignUpState().copyWith(email: email),
        const SignUpState(email: email),
      );
    });

    test('returns object with updated password when password is passed', () {
      expect(
        const SignUpState().copyWith(password: password),
        const SignUpState(password: password),
      );
    });

    test(
        'returns object with updated confirmedPassword'
        ' when confirmedPassword is passed', () {
      expect(
        const SignUpState().copyWith(confirmedPassword: confirmedPassword),
        const SignUpState(confirmedPassword: confirmedPassword),
      );
    });
  });
}
