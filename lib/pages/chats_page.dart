import 'package:flutter/material.dart';
import 'package:whatsapp/pages/message_page.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.message, color: Colors.white,),
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MessagePage()));
              },
              child: Row(
                children: <Widget>[
                  Container(
                    height: 80.0,
                    width: 80.0,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://image.flaticon.com/icons/png/512/149/149071.png"),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Text("user",
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      const Text("messagens")
                    ],
                  ),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(10.0),
                            child:  const Text("08:12"),
                          )
                        ],
                      )),

                ],
              ),
            );
          }
      ),
    );
  }
}
