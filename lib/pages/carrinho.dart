import 'package:flutter/material.dart';
import 'package:layout_food_delivery/widgets/card_carrinho.dart';
import 'package:layout_food_delivery/widgets/row_carrinho.dart';

class Carrinho extends StatelessWidget {
  const Carrinho({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Icons
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 50, 15, 5),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.search,
                    color: Color(0xFFD7D7D7),
                    weight: 2,
                    size: 28,
                  ),
                  SizedBox(width: 22),
                  Icon(
                    Icons.filter_alt_outlined,
                    color: Color(0xFFD7D7D7),
                    weight: 2,
                    size: 28,
                  ),
                ],
              ),
            ),
          ),

          //Header
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aproveite!',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFA3A3A3),
                    ),
                  ),
                  Text(
                    'Seu carrinho de compras',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Produtos
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                CardCarrinho.cardCarrinho(
                  'assets/sopa2.png',
                  'Misturado',
                  50,
                  1,
                ),
                const SizedBox(height: 30),
                CardCarrinho.cardCarrinho(
                  'assets/sopa1.png',
                  'Lentilha',
                  70,
                  2,
                ),
                const SizedBox(height: 30),
                RowCarrinho.rowCarrinho('Misturado', 'Lentilha', 50, 70, 16),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF151515),
                    fixedSize: const Size(405, 75),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
