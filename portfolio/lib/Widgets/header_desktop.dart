import 'package:flutter/material.dart';
import '../Constaints/NavbarLists.dart';
class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTape,});
  final Function(int) onNavMenuTape;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
            colors:[
              Colors.transparent,
              Colors.black38.withOpacity(0.6)
            ]),
      ),
      child: Row(children: [
          Text('MU',style: TextStyle(fontSize: 17,color: Colors.orange,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,decorationColor: Colors.orange),),
        Spacer(),
        for(int i=0;i<navTitles.length;i++)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
              onPressed: (){
                onNavMenuTape(i);
              },
              child: Text(navTitles[i],
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
            ),
          )

      ],),
    );
  }
}
