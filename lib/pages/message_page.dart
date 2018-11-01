import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum OrderOption{ teste1, teste2, teste3 }

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {

  final _msgController = TextEditingController();

  bool _isComposing = false;

  Widget _buildBodyBack() => Container(
    decoration: BoxDecoration(
      color: Colors.grey[200]
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: <Widget>[
                CircleAvatar(
                  child: Image.network("https://image.flaticon.com/icons/png/512/149/149071.png"),
                ),
                Padding(padding: EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const Text("Usuário",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      const Text("online",
                        style: TextStyle(fontSize: 15.0),
                      )
                    ],
                  ),
                )
              ],
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.videocam), onPressed: (){}),
              IconButton(icon: Icon(Icons.phone), onPressed: (){}),
              PopupMenuButton <OrderOption>(itemBuilder: (context)=> <PopupMenuEntry<OrderOption>>[
                const PopupMenuItem <OrderOption>(
                  child: Text("Teste 1"),
                  value: OrderOption.teste1,
                ),
                const PopupMenuItem <OrderOption>(
                  child: Text("Teste 2"),
                  value: OrderOption.teste2,
                ),
                const PopupMenuItem <OrderOption>(
                  child: Text("Teste 3"),
                  value: OrderOption.teste3,
                ),

              ]),
            ],
          ),
          body: Stack(
            children: <Widget>[
              _buildBodyBack(),
              Column(
                children: <Widget>[
                  Expanded(
                      child: ListView.builder(
                          reverse: true,
                          itemCount: 2,
                          itemBuilder: (context, index){
                            return Column(
                              children: <Widget>[
                                _Message1(),
                                _Message2()
                              ],
                            );
                          })
                  ),
                  Container(
                    child: _TextComposer(),
                  )
                ],
              ),
            ],
          )
      )
    );
  }

  Widget _TextComposer(){

    void _reset() {
      setState(() {
        _msgController.clear();
        _isComposing = false;
      });
    }

    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(width: 1.0, color: Colors.transparent)
        ),
        child: Row(
          children: <Widget>[
            Container(
              child:
              IconButton(icon: Icon(Icons.photo_camera), onPressed: () {

              }),
            ),
            Expanded(
              child: TextField(
                controller: _msgController,
                decoration:
                InputDecoration.collapsed(hintText: "Enviar Messagem"),
                onChanged: (text) {
                  setState(() {
                    _isComposing = text.length > 0;
                  });
                },
                onSubmitted: (text) {
                  _reset();
                },
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Theme.of(context).platform == TargetPlatform.iOS
                    ? CupertinoButton(
                    child: Text("Enviar"),
                    onPressed: _isComposing ? () {
                      _reset();
                    } : null)
                    : IconButton(
                    icon: Icon(Icons.send),
                    onPressed: _isComposing ? () {
                      _reset();
                    } : null)),
          ],
        ),
      ),
    );
  }

  Widget _Message1(){
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.green[300],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0), bottomLeft: Radius.circular(5.0))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("asdasdasdsasadasdsadklasdjaklsdjskaldjaskldjaskl"
                      "asdasdasdsadasdasdasdasdasdasdasdasdsadasdasdasdas"
                      "sadasdasdasdasdasdasdasdsadasdsasakdasjdksaskdjsjkdsadjlk"),
                ],
              ),
          ),
          Text("10:00")
        ],
      ),
    );
  }

  Widget _Message2(){
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0), bottomLeft: Radius.circular(5.0))
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("asdasdasdsasadasdsadklasdjaklsdjskaldjaskldjasklsadjlk"),
              ],
            ),
          ),
          Text("10:00")
        ],
      ),
    );
  }
}
