import 'package:flutter/material.dart';

import '../Constaints/ElvatedButton.dart';
class Main_Desktop extends StatelessWidget {
  const Main_Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize=MediaQuery.of(context).size;
    final screenwidth=screensize.width;
    final screenHeight=screensize.height;
    return  Container(
      height: screenHeight,
      constraints: BoxConstraints(
        minHeight: 560.0,
      ),
      width: double.maxFinite,
      color: Colors.black38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hi,\nI'm Muhammad Usman\nA Flutter Developer",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white,height: 1.5),),
              SizedBox(height: 15,),
              //Elvated Button
              elevatedButtonWidget(
                onPressed: (){},
                title: "Let's Get Started"
              ),
            ],
          ),
          CircleAvatar(
            radius: 150,
            //backgroundImage: ExactAssetImage('assets/Images/userpic.jpg',scale: 4,),
            backgroundColor: Colors.transparent,
            child: ClipOval(
                child: SizedBox(
                  width: screenwidth,
                  child: Image.asset('assets/Images/userpic.jpg',
                    fit: BoxFit.fill,),
                ),

            ),

          ),
        ],
      ),
    );
  }
}
