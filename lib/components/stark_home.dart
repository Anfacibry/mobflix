import 'package:flutter/material.dart';
import 'package:mobflix/components/card_conteudo.dart';
import 'package:mobflix/data/dados.dart';

import '../theme/cores.dart';
import 'botao.dart';

class StackHome extends StatelessWidget {
  final Size tamanhoPego;
  const StackHome({required this.tamanhoPego, super.key});

  @override
  Widget build(BuildContext context) {
    ///Stack que criar a barra de rolagem dos videos
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

            ///Carde com todas as informações dos videos
            child: SingleChildScrollView(
              child: Column(
                children: Videos.videos
                    .map(
                      (e) => CardConteudo(
                        tamanhoPego: tamanhoPego,
                        imagem: e["imagem"]!,
                        titulo: e["titulo"]!,
                        visualizacao: e["visualizacao"]!,
                        tempo: e["tempo"]!,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
