import 'package:flutter/material.dart';

import '../theme/cores.dart';

class Botao extends StatelessWidget {
  final String titulo;
  final Color cor;
  final double baixoEsquerda;
  final double baixoDireita;
  final double topEsquerda;
  final double topDireita;
  final double espacamento;
  const Botao({
    required this.titulo,
    required this.cor,
    required this.baixoDireita,
    required this.baixoEsquerda,
    required this.topDireita,
    required this.topEsquerda,
    required this.espacamento,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: espacamento),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(baixoEsquerda),
              topRight: Radius.circular(topDireita),
              bottomRight: Radius.circular(baixoDireita),
              topLeft: Radius.circular(topEsquerda),
            ),
          ),
          backgroundColor: cor,
        ),
        child: Text(
          titulo,
          style: const TextStyle(
            color: Cores.corFontePrimaria,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
