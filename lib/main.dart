import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(         
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 38, 133, 95),
        title: Text("WhangsApp"),
        actions:[
          Padding(padding: EdgeInsets.only(right: 15),
          child: Icon(Icons.camera_alt),
          ),
          Icon(Icons.search),
          Icon(Icons.list)
        ],
        bottom: TabBar(
          tabs: [
            Text("CHAT"),
            Text("STATUS"),
            Text("PANGGILAN")
          ],
          ),
      ),
      body: TabBarView(
        children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
               child: ListTile(
            leading: Icon(
              Icons.person),
              title: Text("Nama"),
              subtitle: Text("Chat si dia"),
              trailing: Icon(
                Icons.timelapse_outlined
              ),
              onTap: () {
                print("Chat di tekan!");
              },
          ),
              );
            }
          ),
          _status(context),
          
        ],
        
      )
    ),
    ),
    );
  }
  _status(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.ac_unit_sharp),
      ),
      title: Text("Status Saya"),
      subtitle: Text("Waktu"),
      trailing: Icon(
        Icons.linear_scale_outlined
      ),
        ),
        Divider(),  
    ],
    );
      
  
  }
}