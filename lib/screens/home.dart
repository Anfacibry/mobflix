import 'package:flutter/material.dart';

import '../components/row_botoes.dart';
import '../components/stark_home.dart';
import '../theme/cores.dart';

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
      body: SizedBox(
        height: tamanhoTela.height,
        width: tamanhoTela.width,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset("assets/images/banner.jpg"),
            ),
            Positioned(
              top: tamanhoTela.height * 0.2,
              child: Container(
                height: tamanhoTela.height * 0.9,
                width: tamanhoTela.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                  ),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: tamanhoTela.height * 0.08,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const RowBotoes(),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          height: tamanhoTela.height * 0.6,
                          width: tamanhoTela.width,
                          child: StackHome(tamanhoPego: tamanhoTela),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: tamanhoTela.height * 0.196,
              width: tamanhoTela.width * 0.4,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  backgroundColor: Cores.corPrimariaBotao,
                ),
                child: const Text(
                  "Assistir agora",
                  style: TextStyle(
                    color: Cores.corFontePrimaria,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
