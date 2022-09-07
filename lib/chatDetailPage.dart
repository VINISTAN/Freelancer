import 'package:flutter/material.dart';

import 'Widgets/bottom_user_input.dart';
import 'chatMessageModel.dart';

class ChatDetailPage extends StatefulWidget{
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Harshad", messageType: "receiver"),
    ChatMessage(messageContent: "Check the images of products?", messageType: "receiver"),
    ChatMessage(messageContent: "Hello!!?ehhhh, doing OK.", messageType: "sender"),
    ChatMessage(messageContent: "Yeah Cool!!", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: Colors.black,),
                ),
                const SizedBox(width: 2,),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar1.jpg"),
                  maxRadius: 20,
                ),
                const SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text("Chat with Harshad Shinde", style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),),
                     // SizedBox(height: 6,),
                    //  Text("Online", style: TextStyle(
                      //    color: Colors.grey.shade600, fontSize: 13),),
                    ],
                  ),
                ),
         //       Icon(Icons.settings, color: Colors.black54,),
              ],
            ),
          ),
        ),
      ),
    //  body: Container(),

      body: Stack(
          children: <Widget>[
            Align(
                child: ListView.builder(
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 1, bottom: 290),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 10, bottom: 10),
                        child: Align(
                          alignment: (messages[index].messageType == "receiver"
                              ? Alignment.topLeft
                              : Alignment.topRight),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: (messages[index].messageType == "receiver"
                                  ? Colors.grey.shade200
                                  : Colors.deepPurple[100]),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Text(messages[index].messageContent,
                              style: const TextStyle(fontSize: 15),),

                          ),


                        ),

                      );

                    }
                )
            ),

            Padding(
              padding: const EdgeInsets.only(top: 600),
              child: SizedBox(
                  height:100.0,
                  width: 700.0,
                  child: BottomUserInputContainer()


              ),
            )
          ]


      ),




    );
  }
  }