import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          TextButton(
            onPressed: null,
            child: Text('press to get products'),
          ),
          Card(
            child: Stack(children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(color: Colors.red),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
