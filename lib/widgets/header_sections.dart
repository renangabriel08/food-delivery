import 'package:flutter/material.dart';

class HeaderSections {
  static headerSections(String titulo) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
          const Text(
            'Ver tudo',
            style: TextStyle(
              color: Color(0xFFA3A3A3),
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      );
    }
}