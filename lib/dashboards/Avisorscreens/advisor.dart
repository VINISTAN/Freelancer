import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolah/chatDetailPage.dart';
import 'package:moolah/coponents/constant.dart';

import '../../GridNew.dart';
import '../../GridNew2.dart';
import '../../Listview.dart';



class Advisor extends StatefulWidget {
  const Advisor({Key? key}) : super(key: key);

  @override
  State<Advisor> createState() => _AdvisorState();
}

class _AdvisorState extends State<Advisor> with TickerProviderStateMixin {

  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 16, top: 26, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Moolaah Partners",
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                        width: 274,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border:
                          Border.all(color: searchbarlight.withOpacity(.18)),
                          color: searchbarlight.withOpacity(.05),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            const Icon(
                              Icons.search,
                              color: grey,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Search partner",
                              style: GoogleFonts.roboto(
                                  color: black.withOpacity(.54),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 6,
                    ),
                    IconButton(
                        onPressed: () {
                          _bottomSheetMore(context);
                        },
                        icon: const Icon(
                          Icons.filter_list_rounded,
                          size: 30,
                        ))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 300,
                  height: 30,
                  child: TabBar(
                      isScrollable: true,
                      controller: _tabController,
                      labelColor: textcolour,
                      unselectedLabelColor: grey,
                      indicatorColor: textcolour,

                      tabs: const [

                        Tab(text: "All Partners" ,),

                        Tab(
                            text: "Moolaah Partners"),
                        Tab(
                          icon: Icon(Icons.grid_view_rounded),

                        ),
                        Tab(
                          icon: Icon(Icons.list),

                        )
                      ]),

                ),
              ),




              Container(
                  height: MediaQuery.of(context).size.height - 255.0,
                  width: double.infinity,
                  child: TabBarView(
                      controller: _tabController,
                      children: [
                        CookiePage(),
                        CookiePage2(),
                        CookiePage(),
                        MyHomePage(),

                      ]
                  )
              )

            ],
          ),
        ),
      ),
    );
  }


  void _bottomSheetMore(context) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          padding: const EdgeInsets.only(
            left: 5.0,
            right: 5.0,
            top: 5.0,
            bottom: 5.0,
          ),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0))),
          child: Wrap(
            children: const <Widget>[
              ListTile(
                title: Text(
                  'Filter By',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
          //    new ListTile(
            //    leading: new Container(
                //  width: 4.0,
                //  child: Icon(
                 //   Icons.favorite,
                  //  color: Colors.pink,
                 //   size: 24.0,
               //   ),
              //  ),
              //  title: const Text(
                 //'Favourites',
                //  style: TextStyle(
                //    fontSize: 14.0,
                 //   fontWeight: FontWeight.w700,
               //   ),
              //  ),
           //   ),
           //   new ListTile(
            ////    leading: new Container(
             //     width: 4.0,
               //   child: Icon(
                //    Icons.settings,
                 //   color: Colors.black,
              //      size: 24.0,
              //    ),
             //   ),

              //  title: const Text(
               //   'Settings',
               //   style: TextStyle(
               //     fontSize: 14.0,
                  //  fontWeight: FontWeight.w700,
              //    ),
           //     ),

             // ),
           //   new ListTile(
             //   leading: new Container(
              //    width: 4.0,
              //    child: Icon(
               //     Icons.account_box,
               //     color: Colors.blue,
               //     size: 24.0,
               //   ),
            //    ),

              //  title: const Text(
              //    'Profile',
              //    style: TextStyle(
              //      fontSize: 14.0,
              //      fontWeight: FontWeight.w700,
              //    ),
             //   ),

           //   ),
          /*    new Divider(
                height: 10.0,
              ),
              new ListTile(
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onTap: () async {
                  // Add Here
                },
              ),*/

            ],
          ),
        );
      },
    );
  }
}
