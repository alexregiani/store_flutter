import 'package:flutter/material.dart';
import 'features/products/data/datasources/product_imp_data_source.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result = 'Press the button to fetch data';

  Future<void> fetchData() async {
    final dataSource = ProductImpDataSource();
    final products = await dataSource.getProducts();
    print(products);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () async {
                  await fetchData();
                },
                child: const Text('json test'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
