import 'package:flutter/material.dart';

import '../theme/cores.dart';
import 'botao.dart';

class RowBotoes extends StatelessWidget {
  const RowBotoes({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Botao(
            titulo: "Front End",
            cor: Cores.corPrimariaBotao,
            topDireita: 20,
            topEsquerda: 0,
            baixoDireita: 0,
            baixoEsquerda: 20,
            espacamento: 20,
          ),
          Botao(
            titulo: "Programação",
            cor: Cores.corTerciariaBotao,
            topDireita: 20,
            topEsquerda: 0,
            baixoDireita: 0,
            baixoEsquerda: 20,
            espacamento: 20,
          ),
          Botao(
            titulo: "Mobile",
            cor: Cores.corSecundariaBotao,
            topDireita: 20,
            topEsquerda: 0,
            baixoDireita: 0,
            baixoEsquerda: 20,
            espacamento: 20,
          ),
          Botao(
            titulo: "Back End",
            cor: Cores.corPrimariaBotao,
            topDireita: 20,
            topEsquerda: 0,
            baixoDireita: 0,
            baixoEsquerda: 20,
            espacamento: 20,
          ),
        ],
      ),
    );
  }
}
