import 'package:counter_app/counter/view/counter_page.dart';
import 'package:flutter/material.dart';

class CounterApp extends MaterialApp {
  const CounterApp({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          home: const CounterPage(),
        );
}
