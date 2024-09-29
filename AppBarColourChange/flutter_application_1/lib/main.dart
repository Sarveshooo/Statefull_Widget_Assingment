
import"package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ("The App Bar Colour change APP"),
      home: AppBarColourChange(),
    );
  }
}
class AppBarColourChange extends StatefulWidget {
  const AppBarColourChange({super.key});

  @override
  State<AppBarColourChange> createState() => _AppBarColourChangeState();
}

class _AppBarColourChangeState extends State<AppBarColourChange> {
  bool CC=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("AppBarColourChange"),
        backgroundColor: (CC)?Colors.purple:Colors.greenAccent,
      ),
      body:Center(child: Container(
        height: 200,
        width: 200,
        color:Colors.blue
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(CC){
          CC=false;
        }else{
          CC=true;
        }
        setState(() {});
      },
      child: const Icon(Icons.abc),
      ),
    );
  }
}