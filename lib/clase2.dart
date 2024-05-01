
import 'dart:io';
import 'package:flutter/material.dart';
import 'country.dart';
class MyAppTwo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppTwoState();
  }

}

class _MyAppTwoState  extends State<MyAppTwo>{
  
   //final List<String> countries =['Argentina', 'Ecuador', 'Colombia', 'Paraguay'];

   List<String> countries = [];
  
  @override
  void initState(){
    super.initState();
    print('Se ejecuto el evento: InitState');
    countries = ['Ecuador','Colombia','Mexico','Peru', 'Rusia',
    'Ecuador','Colombia','Mexico','Peru', 'Rusia',
    'Ecuador','Colombia','Mexico','Peru', 'Rusia',
    'Ecuador','Colombia','Mexico','Peru', 'Rusia',
    'Ecuador','Colombia','Mexico','Peru', 'Rusia',
    'Ecuador','Colombia','Mexico','Peru', 'Rusia',
    'Ecuador','Colombia','Mexico','Peru', 'Rusia'];
  }

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //return con GUI con pantalla
    print('Se ejecuto el evento: build');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      title: 'Primera App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Este es el titulo del AppBar',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  print('Presiono en search');
                },
                icon: const Icon(Icons.search),
                color: Colors.white),
            IconButton(
                onPressed: () {
                  print('Presiono en move vert');
                },
                icon: const Icon(Icons.more_vert),
                color: Colors.white),
            IconButton(
                onPressed: () {
                  print('Presiono en ac unit');
                },
                icon: const Icon(Icons.ac_unit),
                color: Colors.white)
          ],
          backgroundColor: Colors.blue,
        ),
        /* body: const Center(
          child: Text(
            'Este es el body del scaffold',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              backgroundColor: Colors.amber,
            ),
          ),
        ), */
        /*  body: const  Center(
          child: Country(newCountry: 'Argentina',)
        ), */

       /*  body: const Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Country> [
            Country(newCountry: 'Ecuador'),
            Country(newCountry: 'Colombia'),
            Country(newCountry: 'Perú'),
            Country(newCountry: 'Uruguay')
          ],
        ), */

        /* body: Column(children: countries.map((x) => Country(newCountry: x)).toList()) */
        /* body: ListView(
            children:
                countries.map((item) => Country(newCountry: item)).toList()) */
                body: SizedBox(
                  height: 70,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    //itemCount: countries.length,
                    itemBuilder: (context, position){
                      //return Country(newCountry: countries[index]);
                      return Country(newCountry: position.toString());
                    }),
                ),

        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business_center_sharp), label: 'texto'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'negocios'),
          //BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Escuela')
        ]),
         floatingActionButton: FloatingActionButton(
          onPressed: (){
             setState(() {
              countries.add('Nuevo');
            });
            print('Cantidad: ${countries.length}');
          }, child: const Icon(Icons.add),
        ),
      ),
    );
  }

}