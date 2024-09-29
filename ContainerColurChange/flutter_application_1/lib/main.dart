import "package:flutter/material.dart";


void main(){
  runApp(const ChangeContainer());
}
class ChangeContainer extends StatefulWidget {
  const ChangeContainer({super.key});

  @override
  State<ChangeContainer> createState() => _ChangeContainerState();
}

class _ChangeContainerState extends State<ChangeContainer> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ("Container Color Change"),
      home: ContainerColourChange(),
    );
  }
}
class ContainerColourChange extends StatefulWidget {
  const ContainerColourChange({super.key});

  @override
  State<ContainerColourChange> createState() => _ContainerColourChangeState();
}

class _ContainerColourChangeState extends State<ContainerColourChange> {
  bool ColorChange=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Container Colour App"),
        backgroundColor: Colors.blue,
      ),

      body:Center(child: Container(
      height:200,
      width: 200,
      color: (ColorChange) ?Colors.amber:Colors.purple,
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(ColorChange){
          ColorChange=false;
        }else{
          ColorChange=true;
        }
        setState(() { });
      },
      child: const Icon(Icons.add),
      ),
    );
  }
}