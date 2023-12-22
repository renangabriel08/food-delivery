import 'package:flutter/material.dart';
import 'package:layout_food_delivery/widgets/card_costeletas.dart';
import 'package:layout_food_delivery/widgets/header_sections.dart';
import 'package:layout_food_delivery/widgets/mini_container.dart';

class Pesquisa extends StatelessWidget {
  const Pesquisa({super.key});

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
                    'Sopa de espetadas!',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFA3A3A3),
                    ),
                  ),
                  Text(
                    'Encontramos o Chorbasi\nmais próximo de você',
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

          //Mapa
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Image.asset('assets/mapa.png'),
          ),

          //Mini-Cards
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MiniContainer.miniContainer('Ofertas', 'icon-preco'),
                MiniContainer.miniContainer('Popular', 'icon-fogo'),
                MiniContainer.miniContainer('Vegano', 'icon-folha'),
                MiniContainer.miniContainer('Reciclar', 'icon-reciclagem'),
              ],
            ),
          ),

          //Costeletas
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              children: [
                HeaderSections.headerSections('Todas as costelas'),
                CardCosteletas.cardCosteletas(
                  'Misturado',
                  50,
                  0,
                  215,
                  255,
                  'sopa2',
                  'coracaoMarcado',
                  4.7,
                ),
                CardCosteletas.cardCosteletas(
                  'Lentilha',
                  70,
                  4,
                  255,
                  0,
                  'sopa1',
                  'coracaoDesmarcado',
                  4.0,
                ),
                CardCosteletas.cardCosteletas(
                  'Erva-Doce',
                  95,
                  242,
                  0,
                  0,
                  'sopa3',
                  'coracaoDesmarcado',
                  4.5,
                ),
              ],
            ),
          ),

          //Card Azul
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
            child: Container(
              width: double.infinity,
              height: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromRGBO(173, 184, 225, 0.74),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Pedido a sua escolha\nEmbalagens reciclaveis\nRapidamente em sua porta',
                    style: TextStyle(
                      color: Color(0xFF595D6C),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Image.asset(
                    'assets/sopa2.png',
                    height: 110,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
