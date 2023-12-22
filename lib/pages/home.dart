import 'package:flutter/material.dart';
import 'package:layout_food_delivery/widgets/card_categorias.dart';
import 'package:layout_food_delivery/widgets/card_costeletas.dart';
import 'package:layout_food_delivery/widgets/card_opcoes.dart';
import 'package:layout_food_delivery/widgets/card_popular.dart';
import 'package:layout_food_delivery/widgets/header_sections.dart';
import 'package:layout_food_delivery/widgets/mini_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Header
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 50, 15, 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Olá Berk',
                      style: TextStyle(
                        color: Color(0xFFA3A3A3),
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      'Para uma sopa quente',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 27,
                      ),
                    ),
                    Text(
                      'O que você diz?  🍲',
                      style: TextStyle(
                        color: Color(0xFFABABAB),
                        fontWeight: FontWeight.w800,
                        fontSize: 27,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    width: 55,
                    height: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/icon-perfil.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Barra de pesquisa
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 1),
                  ),
                ],
                color: const Color(0xFFF2F2F2),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFFD7D7D7),
                  ),
                  suffixIcon: Icon(
                    Icons.manage_search,
                    color: Color(0xFFD7D7D7),
                  ),
                  label: Text(
                    'Pesquisar',
                    style: TextStyle(
                      color: Color(0xFFD7D7D7),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),

          //Descobrir
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
            child: Column(
              children: [
                HeaderSections.headerSections('Descobrir'),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF202020),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Image.asset('assets/fundo-card.png'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Especial para hoje\nEm todas as sopas\nNão perca 50% de desconto',
                            style: TextStyle(
                              color: Color(0xFFCECECE),
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Image.asset('assets/copo.png', height: 125),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Categorias
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              children: [
                HeaderSections.headerSections('Categorias'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardCategorias.cardCategoria('Vegano', 'sopa3'),
                      CardCategorias.cardCategoria('Frio', 'sopa2'),
                      CardCategorias.cardCategoria('Creme', 'sopa1'),
                      CardCategorias.cardCategoria('Rápido', 'copo-embalagem'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Popular
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              children: [
                HeaderSections.headerSections('Popular'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardPopular.cardPopular(
                        'Lentilha',
                        'lentilha',
                        0xFFC5E8EF,
                      ),
                      CardPopular.cardPopular(
                        'Com vegetais',
                        'vegetais',
                        0xFFF5BCBC,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Card Verde
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(190, 225, 173, 0.74),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset('assets/fundo-card.png'),
                ),
                Positioned(
                  left: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Nos primeiros 5 pedidos\nEm todas as costeletas\n30% de desconto',
                        style: TextStyle(
                          color: Color(0xFF5D6C55),
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Image.asset('assets/dois-copos.png', height: 120),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Opções para você
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
            child: Column(
              children: [
                HeaderSections.headerSections('Opções para você'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardOpcoes.cardOpcoes(
                        'Misturado',
                        4.7,
                        50,
                        'coracaoMarcado',
                        'sopa2',
                      ),
                      CardOpcoes.cardOpcoes(
                        'Lentilha',
                        4.0,
                        70,
                        'coracaoDesmarcado',
                        'sopa1',
                      ),
                      CardOpcoes.cardOpcoes(
                        'Erva-Doce',
                        4.5,
                        95,
                        'coracaoDesmarcado',
                        'sopa3',
                      ),
                    ],
                  ),
                ),
              ],
            ),
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

          //Card Preto
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
            child: Container(
              width: double.infinity,
              height: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFF232323),
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(25, 40, 0, 40),
                child: Text(
                  'Em seu primeiro pedido\ncopo de presente\nNão esqueça de pedir :)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
