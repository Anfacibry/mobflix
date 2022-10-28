import 'package:flutter/material.dart';
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

class HomeMobflix extends StatelessWidget {
  const HomeMobflix({super.key});

  @override
  Widget build(BuildContext context) {
    final Size tamanhoTela = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mobflix",
          style: TextStyle(
            color: Cores.corFonteTitulo,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SizedBox(
          height: tamanhoTela.height,
          width: tamanhoTela.width,
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }
}
