import 'dart:io';
import 'package:filterboxui/views/main_view.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    runApp(const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Filter Box UI',
      debugShowCheckedModeBanner: !true,
      home: FilterBox(),
    );
  }
}
