import 'package:flutter/material.dart';
import 'package:firebase_login_app/app/app.dart';
import 'package:firebase_login_app/home/home.dart';
import 'package:firebase_login_app/login/login.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('onGenerateAppViewPages', () {
    test('returns [HomePage] when authenticated', () {
      expect(
        onGenerateAppViewPages(AppStatus.authenticated, []),
        [
          isA<MaterialPage<void>>().having(
            (p) => p.child,
            'child',
            isA<HomePage>(),
          )
        ],
      );
    });

    test('returns [LoginPage] when unauthenticated', () {
      expect(
        onGenerateAppViewPages(AppStatus.unauthenticated, []),
        [
          isA<MaterialPage<void>>().having(
            (p) => p.child,
            'child',
            isA<LoginPage>(),
          )
        ],
      );
    });
  });
}
