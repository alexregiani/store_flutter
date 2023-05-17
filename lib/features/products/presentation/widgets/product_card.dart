import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 10,
      shadowColor: Colors.grey.withOpacity(0.4),
      clipBehavior: Clip.antiAlias,
      color: const Color(0xFFC8FAFF),
      child: Container(
        width: 250,
        child: Column(children: [
          Image.asset(fit: BoxFit.cover, 'assets/chair.jpg'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              children: [Text('Item name'), Text('Price')],
            ),
          ),
        ]),
      ),
    );
  }
}
