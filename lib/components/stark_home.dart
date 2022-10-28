import 'package:flutter/material.dart';
import 'package:mobflix/components/card_conteudo.dart';

import '../theme/cores.dart';
import 'botao.dart';

class StackHome extends StatelessWidget {
  final Size tamanhoPego;
  const StackHome({required this.tamanhoPego, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Botao(
          titulo: "Mobile",
          cor: Cores.corSecundariaBotao,
          topDireita: 20,
          topEsquerda: 0,
          baixoDireita: 0,
          baixoEsquerda: 0,
          espacamento: 0,
        ),
        Positioned(
          top: 42,
          child: Container(
            height: tamanhoPego.height * 0.5,
            width: tamanhoPego.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50),
              ),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CardConteudo(
                    tamanhoPego: tamanhoPego,
                    imagem: "assets/images/conteudo001.png",
                  ),
                  CardConteudo(
                    tamanhoPego: tamanhoPego,
                    imagem: "assets/images/conteudo002.png",
                  ),
                  CardConteudo(
                    tamanhoPego: tamanhoPego,
                    imagem: "assets/images/conteudo003.png",
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
