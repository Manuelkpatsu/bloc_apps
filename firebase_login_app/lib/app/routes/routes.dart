import 'package:flutter/widgets.dart';
import 'package:firebase_login_app/app/app.dart';
import 'package:firebase_login_app/home/home.dart';
import 'package:firebase_login_app/login/login.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
