import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:infinite_list_app/simple_bloc_observer.dart';

import 'app.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const App());
}
