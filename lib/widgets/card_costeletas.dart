import 'package:flutter/material.dart';

class CardCosteletas {
  static cardCosteletas(String nome, int numero, int cor1, int cor2, int cor3,
      String imgProduto, String imgCoracao, double avaliacao) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(cor1, cor2, cor3, 0.05),
            const Color(0xFFFFFFFF),
            const Color(0xFFFFFFFF),
            const Color(0xFFFFFFFF),
          ], begin: Alignment.centerLeft, end: Alignment.center),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/$imgProduto.png',
              height: 110,
              width: 110,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nome,
                            style: const TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '${numero.toString()} TL',
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Image.asset('assets/icon-preco.png'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icon-relogio.png',
                            width: 13,
                            height: 13,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            '25 dk',
                            style: TextStyle(
                              color: Color(0xFFB3B3B3),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/icon-estrela-amarela.png'),
                          Text(avaliacao.toString()),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/$imgCoracao.png'),
                          const SizedBox(width: 30),
                          Image.asset('assets/icon-sacola.png'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
