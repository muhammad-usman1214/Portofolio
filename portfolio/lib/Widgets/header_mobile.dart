import 'package:flutter/material.dart';
class HeaderMobile extends StatelessWidget {
 const HeaderMobile({required this.onMenuTap});
final VoidCallback onMenuTap;
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
              Colors.black12
            ]),
      ),
      child: Row(children: [
        Text('MU',style: TextStyle(fontSize: 17,color: Colors.orange,fontWeight: FontWeight.w600),),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
              onPressed: onMenuTap,
              icon: Icon(Icons.menu,color: Colors.white70,)),
        )

      ],),
    );
  }
}
