import 'package:flutter/material.dart';
import 'package:mobflix/theme/cores.dart';

class AddVideo extends StatefulWidget {
  const AddVideo({super.key});

  @override
  State<AddVideo> createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Cadastre um vídeo",
          style: TextStyle(
            fontSize: 30,
            color: Cores.corFontePrimaria,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,

        ///Reomove botão de voltar
        automaticallyImplyLeading: false,
      ),
    );
  }
}
