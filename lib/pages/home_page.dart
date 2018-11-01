import 'package:flutter/material.dart';
import 'package:whatsapp/pages/calls_page.dart';
import 'package:whatsapp/pages/camera_page.dart';
import 'package:whatsapp/pages/chats_page.dart';
import 'package:whatsapp/pages/status_page.dart';

enum OrderOption{ teste1, teste2, teste3 }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {



  @override
  Widget build(BuildContext context) {
    return Material(child:  DefaultTabController(length: 4, initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0.7,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: (){}),
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
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(text: 'CONVERSAS'),
              Tab(text: 'STATUS',),
              Tab(text: 'CHAMADAS',),
            ],),
          ),
          body: TabBarView(children: [
            CameraPage(),
            ChatsPage(),
            StatusPage(),
            CallsPage()
          ]),
        )
    ),
    );
  }
}