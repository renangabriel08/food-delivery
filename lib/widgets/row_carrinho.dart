import 'package:flutter/material.dart';

class RowCarrinho {
  static rowCarrinho(String p1, String p2, int pr1, int pr2, int desconto) {
    return SizedBox(
      width: double.infinity,
      height: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    p1,
                    style: const TextStyle(
                      color: Color(0xFFBCBCBC),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '$pr1 TL',
                    style: const TextStyle(
                      color: Color(0xFF6B6B6B),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    p2,
                    style: const TextStyle(
                      color: Color(0xFFBCBCBC),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '$pr2 TL',
                    style: const TextStyle(
                      color: Color(0xFF6B6B6B),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Desconto',
                    style: TextStyle(
                      color: Color(0xFFBCBCBC),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '-$desconto TL',
                    style: const TextStyle(
                      color: Color(0xFF6B6B6B),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  color: Color(0xFF151515),
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              Text(
                '${pr1 + pr2 - desconto} TL',
                style: const TextStyle(
                  color: Color(0xFF151515),
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
