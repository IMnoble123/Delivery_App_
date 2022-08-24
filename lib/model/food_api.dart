
// import 'dart:convert';
// import 'package:delivery/model/food.dart';
// import 'package:http/http.dart' as http;

// class RecipeApi {
//   // static Future<List<Recipe>> getRecipe() async {
//   //   var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
//   //       {
//   //         	"limit": "24",
// 	//           "start": "0"
//   //       });

//   //   final response = await http.get(uri, headers: {
//   //     	"X-RapidAPI-Key": "80207e643fmsh488347721703f07p1bad52jsn89b6f9a7812d",
// 	//        "X-RapidAPI-Host": "yummly2.p.rapidapi.com",
// 	//         "useQueryString": "true"
//   //   });

//     static Future<List<Recipe>> getRecipe() async {
//     var uri = Uri.https('127.0.0.1:8000/api', '/category/',
//         );

//     final response = await http.get(uri);

//     Map data = jsonDecode(response.body);
//     List _temp = [];

//     for (var i in data['feed']) {
//       _temp.add(i['content']['details']);
//     }

//     return Recipe.recipesFromSnapshot(_temp);
//   }
// }


// // const req = unirest("GET", "https://yummly2.p.rapidapi.com/feeds/list");

// // req.query({
// // 	"limit": "24",
// // 	"start": "0"
// // });

// // req.headers({
// // 	"X-RapidAPI-Key": "80207e643fmsh488347721703f07p1bad52jsn89b6f9a7812d",
// // 	"X-RapidAPI-Host": "yummly2.p.rapidapi.com",
// // 	"useQueryString": true
// // });
