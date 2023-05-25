import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 500, color: Colors.blue),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'items name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                '\$30,99',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget sollicitudin massa. Donec rutrum tellus dolor, quis aliquet tellus congue non. Nam vitae eros massa. Cras eget mattis est. Sed .'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size(200, 50),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: null,
            child: Text(style: TextStyle(color: Colors.white, fontSize: 20), '+ Add to cart'),
          ),
        ],
      ),
      appBar: AppBar(),
    );
  }
}
