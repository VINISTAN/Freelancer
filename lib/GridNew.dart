import 'package:flutter/material.dart';
import 'package:moolah/coponents/constant.dart';
import 'coponents/advisor_profile.dart';


class CookiePage extends StatelessWidget {
  const CookiePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 15.0),
          Container(
              padding: const EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,

              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Arn # 90794', 'Shilpey Dubey', 'assets/images/avatar1.jpg',
                      false, false, context),
                  _buildCard('Arn # 13257', 'Harshad Shinde', 'assets/images/avatar2.jpg',
                      true, false, context),
                  _buildCard('Arn # 89564', 'Sarfaraj Khan',
                      'assets/images/avatar3.jpeg', false, true, context),
                  _buildCard('Arn # 25253', 'Pawan Kumar', 'assets/images/avatar1.jpg',
                      false, false, context),
                  _buildCard('Arn # 89564', 'Sarfaraj Khan',
                      'assets/images/avatar3.jpeg', false, true, context),
                  _buildCard('Arn # 25253', 'Pawan Kumar', 'assets/images/avatar1.jpg',
                      false, false, context)
                ],
              )),
          const SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1.0,
                          blurRadius: 1.0)
                    ],
                    color: Colors.white54),
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? const Icon(Icons.star, color: Colors.grey)
                                : const Icon(Icons.star,
                                color: Colors.amber,)
                          ])),
                  Hero(
                      tag: 'tagImage$imgPath',
                    //  tag: imgPath,
                      child: Container(
                          height: 75.0,
                          width: 75.0,
                          child: CircleAvatar(
                          backgroundImage: AssetImage(imgPath),
                    maxRadius: 30,
                  ))),
                  const SizedBox(height: 19.0),
                  Text(price,
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  const SizedBox(height: 5.0),
                  Text(name,
                      style: const TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 10.0)),

                ]))));
  }
}