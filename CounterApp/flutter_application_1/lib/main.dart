import "package:flutter/material.dart";
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
      title: ("CounterApp"),
      home:CounterApp(),
    );
  }
}
class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int Count=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: const Text("CounterApp"),
        backgroundColor: Colors.blue,
      ) ,

      body: Center(child: Text("$Count"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Count++;
        setState(() { });
      },
      child: const Icon(Icons.add),
      ),
      
      
    );
  }
}