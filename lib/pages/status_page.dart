import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(onPressed: (){},
            backgroundColor: Colors.white,
            child: Icon(Icons.edit, color: Colors.black,),
          ),
          SizedBox(height: 20.0,),
          FloatingActionButton(onPressed: (){},
            child: Icon(Icons.camera_alt, color: Colors.white,),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 40.0,
                  height: 40.0,
                  margin: EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://image.flaticon.com/icons/png/512/149/149071.png"),
                    fit: BoxFit.fill
                    ),
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(width: 1.0, color: Colors.grey),
                  ),
                ),
                Expanded(child: Text("teste status",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w300, fontFamily: "georgia"),
                )),
                FlatButton.icon(onPressed: (){}, icon: Icon(Icons.wifi, color: Theme.of(context).primaryColor,), label: Text("0")),
                IconButton(icon: Icon(Icons.reply, textDirection: TextDirection.rtl, color: Theme.of(context).primaryColor,), onPressed: (){})
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only( left:  25.0, right: 25.0),
            child: Text("Seu status ficara ativo no periodo de 24 Horas."),
          )
        ],
      )
    );
  }
}
