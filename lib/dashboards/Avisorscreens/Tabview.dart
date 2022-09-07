import 'package:flutter/material.dart';
import 'package:moolah/coponents/constant.dart';
import 'package:moolah/dashboards/Avisorscreens/Allpartners.dart';
import 'package:moolah/dashboards/Avisorscreens/Mymoolaahpartners.dart';

class Tabview extends StatelessWidget {
  const Tabview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              indicator: BoxDecoration(
                  border: Border.all(color: textcolour), color: textcolour),
              labelColor: black,
              unselectedLabelColor: grey,
              tabs: const [
                Tab(text: "hi"),
                Tab(
                  text: "hello",
                )
              ]),
        ),
        body: const TabBarView(children: [Allpartners(), Mymollaahpartners()]),
      )),
    );
  }
}
