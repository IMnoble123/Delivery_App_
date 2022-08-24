// import 'package:delivery/model/food.dart';
// import 'package:delivery/model/food_api.dart';
// import 'package:flutter/material.dart';

// import 'widgets/food_card.dart';

// class Foodpage extends StatefulWidget {
//   const Foodpage({Key? key}) : super(key: key);

//   @override
//   State<Foodpage> createState() => _FoodpageState();
// }

// class _FoodpageState extends State<Foodpage> {
//   // late List<Recipe> _recipes;
//   List<Recipe> _recipes = [];
//   bool _isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     getRecipes();
//     setState(() {});
//   }

//   Future<void> getRecipes() async {
//     _recipes = await RecipeApi.getRecipe();
//     setState(() {
//       _isLoading = false;
//       _recipes;
//     });
//     print(_recipes);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           title: const Text(
//             'Foods',
//             style: TextStyle(fontSize: 15, color: Colors.black),
//           ),
//         ),
//         body: _isLoading
//             ? const Center(child: CircularProgressIndicator())
//             : ListView.builder(
//                 itemCount: _recipes.length,
//                 itemBuilder: (context, index) {
//                   return FoodCard(
//                       title: _recipes[index].name,
//                       rating: _recipes[index].rating.toString(),
//                       cooktime: _recipes[index].totalTime,
//                       thumbnailUrl: _recipes[index].images);
//                 }));
//   }
// }
