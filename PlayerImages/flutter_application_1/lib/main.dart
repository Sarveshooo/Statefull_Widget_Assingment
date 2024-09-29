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
      title: ("The Founders App"),
      debugShowCheckedModeBanner: false,
      home:Founders(),
    );
  }
}
class Founders extends StatefulWidget {
  const Founders({super.key});

  @override
  State<Founders> createState() => _FoundersState();
}

class _FoundersState extends State<Founders> {
  int counter=0;
  List<String> FoundersList =<String>[
  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Dennis_Ritchie_2011.jpg/330px-Dennis_Ritchie_2011.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Guido_van_Rossum_in_PyConUS24.jpg/330px-Guido_van_Rossum_in_PyConUS24.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/James_Gosling_2008.jpg/330px-James_Gosling_2008.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Lc3_2018_%28263682303%29_%28cropped%29.jpeg/330px-Lc3_2018_%28263682303%29_%28cropped%29.jpeg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Bjarne_Stroustrup_%282013%29.jpg/330px-Bjarne_Stroustrup_%282013%29.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Founders of Languages"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(FoundersList[counter],
            height: 300,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton
      (onPressed: ()
      {
        if(counter<FoundersList.length-1){
          counter++;
        }else{
          counter=0;
        }
        setState(() {});
      },
      child: Icon(Icons.add),
      ),

    );
  }
}