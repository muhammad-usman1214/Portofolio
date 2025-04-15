import 'package:flutter/material.dart';

import '../Constaints/NavbarLists.dart';
class Drawer_Mobile extends StatelessWidget {
  const Drawer_Mobile({super.key, required this.onnavItemTape,});
  final Function(int) onnavItemTape;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black38.withOpacity(0.2),
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
              child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  }, icon: Icon(Icons.close,color: Colors.white70,)),
            ),
          ),
          for(int i=0;i<navIcons.length;i++)
            ListTile(
              onTap:(){
                onnavItemTape(i);
                },
              leading: Icon(navIcons[i],color: Colors.white,),
              title:Text(navTitles[i],style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),) ,
            ),
        ],
      ),
    );
  }
}
