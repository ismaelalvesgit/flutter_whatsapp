import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.message, color: Colors.white,),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           Container(
             width: 60.0,
             height: 60.0,
             decoration: BoxDecoration(
               border: Border.all(width: 1.0, color: Colors.grey),
               borderRadius: BorderRadius.circular(50.0),
               image: DecorationImage(image: NetworkImage("https://image.flaticon.com/icons/png/512/149/149071.png"))
             ),
           ),
            Expanded(child: Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Usuário",
                  ),
                  FlatButton.icon(onPressed: (){},
                      icon: Icon(Icons.call_received, color: Theme.of(context).primaryColor),
                      label: Text("Juat Now, 12:PM"))
                ],
              ),
            ),
            ),
            IconButton(icon: Icon(Icons.videocam, color: Theme.of(context).primaryColor,),
                onPressed: (){})

          ],
        ),
      ),
    );
  }
}
