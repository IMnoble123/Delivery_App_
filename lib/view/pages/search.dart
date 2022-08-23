import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: const Icon(Icons.arrow_back_ios,color: Colors.black,),
        leadingWidth: 5,
        title: const TextField(
                decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.grey,
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                    border: InputBorder.none,
                    fillColor: Color(0xfff3f3f4),
                    filled: true),
              ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
