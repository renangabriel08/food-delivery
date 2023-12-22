import 'package:flutter/material.dart';

class CardOpcoes {
  static miniIcone(String imagem) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFFFFFFF),
      ),
      child: Center(child: Image.asset('assets/$imagem.png')),
    );
  }

  static cardOpcoes(String nome, double nota, int tlNumber, String coracao,
      String imgProduto) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 30, 0),
      child: Stack(
        children: [
          Container(
            width: 225,
            height: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xFFF6F6F6),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Image.asset('assets/icon-estrela-amarela.png'),
                        Text(
                          nota.toString(),
                          style: const TextStyle(
                            color: Color(0xFFB3B3B3),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/icon-relogio.png'),
                              const Text(
                                '  25 dk',
                                style: TextStyle(
                                  color: Color(0xFFB3B3B3),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text('$nome\n${tlNumber.toString()} TL'),
                        ],
                      ),
                      Row(
                        children: [
                          miniIcone(coracao),
                          const SizedBox(width: 10),
                          miniIcone('icon-sacola'),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Image.asset(
              'assets/$imgProduto.png',
              width: 160,
              height: 160,
            ),
          ),
        ],
      ),
    );
  }
}
