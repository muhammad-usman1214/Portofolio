import 'package:flutter/material.dart';
import '../Constaints/ElvatedButton.dart';
class Main_Mobile extends StatelessWidget {
  const Main_Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize=MediaQuery.of(context).size;
    final screenHeight=screensize.height;
    final screenwidth=screensize.width;
    final circlAvtar=screenwidth*0.3;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
      height: screenHeight,
      constraints: BoxConstraints(
        minHeight: 560.0
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                Colors.black38.withOpacity(0.5),
                Colors.black38.withOpacity(0.5),
              ]).createShader(bounds);
              
            },
            blendMode: BlendMode.srcATop,
            child: CircleAvatar(
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
          ),
          SizedBox(height:20,),
          Text("Hi,\nI'm Muhammad Usman\nA Flutter Developer",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white,height: 1.5),),
          SizedBox(height: 15,),
          elevatedButtonWidget(
              onPressed: (){},
              title: "Let's Get Started"
          ),
        ],
      ),
    );
  }
}
