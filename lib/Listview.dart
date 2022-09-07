import 'package:flutter/material.dart';



class MyHomePage extends StatelessWidget {
  // Generate some dummy data
  final List dummyList = List.generate(1000, (index) {
    return {
      "id": index,
      "title": "Harshad Shinde ",
      "subtitle": "Arn #25253 "
    };
  });

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
              itemCount: dummyList.length,
              itemBuilder: (context, index) => Card(
                elevation: 2,
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar1.jpg"),
                    maxRadius: 20,
                  ),
                  title: Text(dummyList[index]["title"]),
                  subtitle: Text(dummyList[index]["subtitle"]),
                  trailing: const Icon(Icons.star,color: Colors.amber,),
                ),
              ),
            )));
  }
}