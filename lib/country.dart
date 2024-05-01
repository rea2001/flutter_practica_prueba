import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  // String newCountry = 'Colombia';
  final String newCountry;
  const Country({super.key, required this.newCountry});

  @override
  Widget build(BuildContext context) {
    /* return  Card(
      child: Text(newCountry)); */

    /* return  Card(
      child: Center(child: Text(newCountry),)); */
/* 
      return  Card(
        child: Center(
        child: Text(newCountry)),
      );  */

    return GestureDetector(
      child: Card(
        child: Center(child: Text(newCountry)),
      ),
      onTap: () {
        print('Hizo click en el item: $newCountry');
      },
      onDoubleTap: () => print('Hizo doble click sobre el item: $newCountry'),
      onLongPress: () => print('Hixo click sostenido en el item: $newCountry'),
    );
  }
}
