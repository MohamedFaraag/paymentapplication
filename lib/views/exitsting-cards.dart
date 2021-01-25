import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

class ExitsingCards extends StatefulWidget {
  @override
  _ExitsingCardsState createState() => _ExitsingCardsState();
}

class _ExitsingCardsState extends State<ExitsingCards> {
  List cards = [
    {
      'cardNumber': '4242424242424242',
      'expiryDate': '04/24',
      'cardHolderName': 'Muhammad Ahsan Ayaz',
      'cvvCode': '424',
      'showBackView': false,
    },
    {
      'cardNumber': '5555555566554444',
      'expiryDate': '04/23',
      'cardHolderName': 'Tracer',
      'cvvCode': '123',
      'showBackView': false,
    }
  ];

  payViaExitsingCard(BuildContext context,card){
Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chosse exitsing card'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: cards.length,
            itemBuilder: (BuildContext context, index) {
              var card = cards[index];
              return InkWell(
                onTap: (){
                  payViaExitsingCard(context, card);
                },
                child: CreditCardWidget(
                  cardNumber: card['cardNumber'],
                  expiryDate: card['expiryDate'],
                  cardHolderName: card['cardHolderName'],
                  cvvCode: card['cvvCode'],
                  showBackView:
                      false, //true when you want to show cvv(back) view
                ),
              );
            }),
      ),
    );
  }
}
