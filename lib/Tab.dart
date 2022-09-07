import 'package:flutter/material.dart';

import 'coponents/constant.dart';


class tab extends StatefulWidget {
  const tab({Key? key}) : super(key: key);

  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab>with TickerProviderStateMixin  {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: SizedBox(
        width: 300,
        height: 30,
        child: TabBar(
            isScrollable: true,
            controller: _tabController,
            labelColor: textcolour,
            unselectedLabelColor: grey,
            indicatorColor: textcolour,

            tabs:  [

              Tab(text: "All Partners" ,),

              Tab(
                  text: "Moolah Partners"),
              Tab(
                icon: Icon(Icons.grid_view_rounded),

              ),
              Tab(
                icon: Icon(Icons.list),

              )
            ]),

      ),
    );

  }
}
