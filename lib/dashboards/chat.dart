import 'package:flutter/material.dart';

import '../Widgets/conversationList.dart';
import '../chatDetailPage.dart';
import '../model/chatUsersModel.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({ Key? key }) : super(key: key);

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  List<ChatUsers> chatUsers = [
    ChatUsers(text: "Jane Russel", secondaryText: "Awesome Setup", image: "assets/images/avatar1.jpg", time: "Now", name: 'Rahul Gaitonde',  messageText: 'You will see the better results', imageURL: 'null'),
    ChatUsers(text: "Glady's Murphy", secondaryText: "That's Great", image: "assets/images/avatar2.jpg", time: "Yesterday", name: 'Abhishek Agarwal' ,messageText: 'I will get back to you shortly', imageURL: ''),
    ChatUsers(text: "Jorge Henry", secondaryText: "Hey where are you?", image: "assets/images/avatar3.jpeg", time: "31 Mar", messageText: 'Dont worry your long time investments are done', name: 'Anurag Batra', imageURL: 'null'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Chat",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                     //   color: Colors.pink[50],
                      ),

                      child: Row(
                        children: <Widget>[
                      //    Icon(Icons.add,color: Colors.pink,size: 20,),
                          SizedBox(width: 2,),
                       //   Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),

                        ],

                      ),

                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Advisor",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.grey.shade200
                      )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,

              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),

              itemBuilder: (context, index){

                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,

                );

              },

            ),

          ],

        ),
      ),
    );
  }
}