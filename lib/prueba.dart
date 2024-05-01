import 'package:flutter/material.dart';

class Pantalla1 extends StatefulWidget{
  @override
  State <StatefulWidget> createState(){
    return _Pantalla1State();
  }
}

class _Pantalla1State extends State<Pantalla1>{
  @override
  Widget build(BuildContext contex){
    print('ya se ejecuto');
    return MaterialApp(
        title: 'Aqui estoy',
        theme: ThemeData(useMaterial3: false),
        debugShowCheckedModeBanner:  false,
        home: Scaffold(
            appBar: AppBar(
                            backgroundColor: Colors.black,
              title: const Text('esta si es', style: TextStyle(color: Colors.amber)),
            ),

            body: Center()
          ),
    );
  }
}