import 'dart:convert';

import 'package:delivery/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LastExampleScreen extends StatefulWidget {
  const LastExampleScreen({Key? key}) : super(key: key);

  @override
  State<LastExampleScreen> createState() => _LastExampleScreenState();
}

class _LastExampleScreenState extends State<LastExampleScreen> {
  
  Future<Productmodel> getProductApi() async {
    final response =
        await http.get(Uri.parse('http://10.0.2.2:8000/api/category/'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return Productmodel.fromJson(data);
    } else {
      return Productmodel.fromJson(data);
    }
  }

  @override
  Widget build(
    BuildContext context
  ) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Api Sample"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: FutureBuilder<Productmodel>(
              future: getProductApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.results.length,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Text(
                                snapshot.data!.results[index].categoryName
                                    .toString(),
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(snapshot
                                  .data!.results[index].categoryNo
                                  .toString()),
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(snapshot
                                    .data!.results[index].thumbnail
                                    .toString()),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .3,
                              width: MediaQuery.of(context).size.width * 1,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot
                                    .data!.results[index].thumbnail.length,
                                itemBuilder: (context, position) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .25,
                                      width: MediaQuery.of(context).size.width *
                                          .5,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(snapshot
                                              .data!.results[index].thumbnail
                                              .toString()),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      });
                } else {
                  return const Text('loding');
                }
              },
            ))
          ],
        ),
      ),
    );
  }
}
