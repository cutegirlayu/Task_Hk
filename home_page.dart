import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: ProductList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add product screen
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => AddProductScreen()),
          // );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Replace 10 with the actual number of products
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Product ${index + 1}'),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              // Delete the product
            },
          ),
        );
      },
    );
  }
}
