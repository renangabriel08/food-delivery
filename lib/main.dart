import 'package:flutter/material.dart';
import 'package:layout_food_delivery/pages/carrinho.dart';
import 'package:layout_food_delivery/pages/curtidos.dart';
import 'package:layout_food_delivery/pages/home.dart';
import 'package:layout_food_delivery/pages/notificacoes.dart';
import 'package:layout_food_delivery/pages/pesquisa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int paginaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFCFCFC),
        body: IndexedStack(
          index: paginaSelecionada,
          children: const [
            Home(),
            Curtidos(),
            Pesquisa(),
            Notificacoes(),
            Carrinho(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: paginaSelecionada,
          onTap: (value) => setState(() {
            paginaSelecionada = value;
          }),
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFFECEBEB),
          unselectedItemColor: const Color(0xFF9E9E9E),
          selectedItemColor: const Color(0xFF000000),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Curtidos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Pesquisa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: 'Alertas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Carrinho',
            ),
          ],
        ),
      ),
    );
  }
}
