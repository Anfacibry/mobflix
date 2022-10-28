import 'package:flutter/material.dart';

class CardConteudo extends StatelessWidget {
  final Size tamanhoPego;
  final String imagem;
  const CardConteudo(
      {required this.tamanhoPego, required this.imagem, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          height: tamanhoPego.height * 0.2,
          width: tamanhoPego.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage(imagem),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: tamanhoPego.height * 0.07,
          width: tamanhoPego.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
