import 'package:flutter/material.dart';
import 'package:layout_food_delivery/widgets/card_opcoes.dart';
import 'package:layout_food_delivery/widgets/header_sections.dart';

class Curtidos extends StatelessWidget {
  const Curtidos({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 60, 15, 20),
            child: Column(
              children: [
                Container(
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
                const SizedBox(height: 30),
                HeaderSections.headerSections('Seus pratos'),
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
                        'coracaoMarcado',
                        'sopa1',
                      ),
                      CardOpcoes.cardOpcoes(
                        'Erva-Doce',
                        4.5,
                        95,
                        'coracaoMarcado',
                        'sopa3',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                HeaderSections.headerSections('Suas bebidas'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardOpcoes.cardOpcoes(
                        'Duas Coca-Cola',
                        4.7,
                        25,
                        'coracaoMarcado',
                        'doisCopos',
                      ),
                      CardOpcoes.cardOpcoes(
                        'Pacote Latinhas',
                        4.0,
                        20,
                        'coracaoMarcado',
                        'pacote',
                      ),
                      CardOpcoes.cardOpcoes(
                        'Coca-Cola',
                        4.5,
                        15,
                        'coracaoMarcado',
                        'copo',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
