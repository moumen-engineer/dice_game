import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(
     MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          toolbarHeight: 70,
          title:const Text('dice game'),
          backgroundColor: Colors.grey[900],
        ),
        body: const Same(),
      ),
    ),
  );
}
class Same extends StatefulWidget {
  const Same({super.key});

  @override
  State<Same> createState() => _SameState();
}
class _SameState extends State<Same> {
  int leftface = Random().nextInt(6)+1;
  int rightface = Random().nextInt(6)+1;
  int cmpt=0;
  void changedice(){
    rightface= Random().nextInt(6)+1;
    leftface= Random().nextInt(6)+1;
    if(cmpt<10){
      cmpt++;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
        ),
        const Image(
          image:  AssetImage('images/idea.png'),
          width: 200.0,
          height: 200.0,
        ),
        leftface==rightface && cmpt<=10
        ?const Card(
          color: Colors.green,
          margin: EdgeInsets.only(right: 90, left: 95.0),
          child: Padding(
            padding: EdgeInsets.all(3.0),
            child: ListTile(
              title: Text(
                'stoop !!',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Julee',
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
           ),
          )
        :const Card(
          color: Colors.amber,
          margin: EdgeInsets.only(left: 90,right: 100.0),
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: ListTile(
              title: Text(
                'try again !',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Julee',
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 90.0,
        ),
        Text(
          '$cmpt/10 score',
          style:const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Expanded(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        changedice();
                      });
                    },
                    child: Image.asset('images/face($leftface).png'),
                  ), 
              ),
              Expanded(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        changedice();
                      });
                    },
                    child: Image.asset('images/face($rightface).png'),
                  ),
              ),
            ],
          ),
    ),
          ElevatedButton.icon(
            onPressed: (){
              setState(() {
                changedice();
                cmpt=0;
              });
            },
            icon:const Icon(
              Icons.stars,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black45,
              foregroundColor: Colors.amber,
            ),
            label:const Text(
              'start',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}

