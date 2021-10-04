import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'gridviewpage.dart';
import 'listviewpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(100,0,0,0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                primary: Colors.orange,
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const GridViewPage()));
              }, child: const Text('GridView'),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(100,0,0,0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                primary: Colors.orange,
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ListViewPage()));
              }, child: const Text('GridView'),
            ),
          ),
        ],
      ),
    );
  }
}
