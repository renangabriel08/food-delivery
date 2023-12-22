import 'package:flutter/material.dart';

class CardPopular {
  static cardPopular(String titulo, String imagem, int corFundo) {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(corFundo),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 10,
            child: Text(
              titulo,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/$imagem.png',
            ),
          ),
        ],
      ),
    );
  }
}
