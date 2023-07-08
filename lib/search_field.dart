import 'package:flutter/material.dart';

List<String> products = [
  "Product 1",
  "Product 2",
  "Product 3",
  "Product 4",
  "Product 5",
  "Product 6",
  "Product 7",
  "Product 8",
  "Product 9",
  "Product 10",
];

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  List<String> filteredProducts = [];

  void searchProducts(String query) {
    setState(() {
      filteredProducts = products
          .where((product) =>
          product.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            onChanged: searchProducts,
            decoration: InputDecoration(
              labelText: 'Search',
              prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFebeaee)),
                ),
                focusedBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                // hintText: hintText,
                // hintStyle: TextStyle(color: Colors.grey[500])
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredProducts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(filteredProducts[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
