import 'package:flutter/material.dart';
import 'package:layout_food_delivery/widgets/card_notificacao.dart';

class Notificacoes extends StatelessWidget {
  const Notificacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //Notificações
      child: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 12.5, 15, 12.5),
            child: CardNotificacao.cardNotificacao(
              'Desconto',
              30,
              'Aproveite 30% de desconto e frete grátis utilizando o cupom [RenanLindo]',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 12.5, 15, 12.5),
            child: CardNotificacao.cardNotificacao(
              'Frete Grátis',
              30,
              'Aproveite frete grátis em sua primeira compra em nosso aplicativo',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 12.5, 15, 12.5),
            child: CardNotificacao.cardNotificacao(
              'Desconto',
              30,
              'Aproveite 30% de desconto e frete grátis utilizando o cupom [RenanLindo]',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 12.5, 15, 12.5),
            child: CardNotificacao.cardNotificacao(
              'Frete Grátis',
              30,
              'Aproveite frete grátis em sua primeira compra em nosso aplicativo',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 12.5, 15, 12.5),
            child: CardNotificacao.cardNotificacao(
              'Desconto',
              30,
              'Aproveite 30% de desconto e frete grátis utilizando o cupom [RenanLindo]',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 12.5, 15, 12.5),
            child: CardNotificacao.cardNotificacao(
              'Frete Grátis',
              30,
              'Aproveite frete grátis em sua primeira compra em nosso aplicativo',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 12.5, 15, 12.5),
            child: CardNotificacao.cardNotificacao(
              'Desconto',
              30,
              'Aproveite 30% de desconto e frete grátis utilizando o cupom [RenanLindo]',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 12.5, 15, 12.5),
            child: CardNotificacao.cardNotificacao(
              'Frete Grátis',
              30,
              'Aproveite frete grátis em sua primeira compra em nosso aplicativo',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 12.5, 15, 12.5),
            child: CardNotificacao.cardNotificacao(
              'Desconto',
              30,
              'Aproveite 30% de desconto e frete grátis utilizando o cupom [RenanLindo]',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 12.5, 15, 12.5),
            child: CardNotificacao.cardNotificacao(
              'Frete Grátis',
              30,
              'Aproveite frete grátis em sua primeira compra em nosso aplicativo',
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
