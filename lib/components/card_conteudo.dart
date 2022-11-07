import 'package:flutter/material.dart';
import 'package:mobflix/theme/cores.dart';

class CardConteudo extends StatelessWidget {
  final Size tamanhoPego;
  final String imagem;
  final String titulo;
  final String visualizacao;
  final String tempo;
  const CardConteudo({
    required this.tamanhoPego,
    required this.imagem,
    required this.titulo,
    required this.visualizacao,
    required this.tempo,
    Key? key,
  }) : super(key: key);

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
          child: Row(
            children: [
              SizedBox(
                width: tamanhoPego.width * 0.25,
                child: Column(
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/alura001.jpg"),
                    ),
                    Text(
                      "Alura Curso Online",
                      style: TextStyle(
                        fontSize: 10,
                        color: Cores.corFonteSecundaria,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: tamanhoPego.width * 0.55,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titulo,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Cores.corFonteSecundaria,
                          ),
                        ),
                        Text(
                          "$visualizacao mil visualizações . há $tempo",
                          style: const TextStyle(
                            fontSize: 10,
                            color: Cores.corFonteSecundaria,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
