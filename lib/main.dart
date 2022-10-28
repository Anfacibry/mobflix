import 'package:flutter/material.dart';
import 'package:mobflix/screens/home.dart';
import 'package:mobflix/theme/cores.dart';

void main() => runApp(const Mobflix());

class Mobflix extends StatelessWidget {
  const Mobflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bobflix",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Cores.corPrimaria,
          secondary: Cores.corSecundaria,
        ),
        scaffoldBackgroundColor: Cores.corPrimaria,
      ),
      home: const HomeMobflix(),
    );
  }
}
