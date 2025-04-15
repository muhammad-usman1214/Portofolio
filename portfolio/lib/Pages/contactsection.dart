import 'package:flutter/material.dart';
import 'package:portfolio/Constaints/sociallinks.dart';
import 'dart:js' as js;
import '../Constaints/ElvatedButton.dart';
import '../Widgets/Textfield.dart';
import '../Widgets/Textfielddesktop.dart';
class Contact_Section extends StatelessWidget {
  const Contact_Section({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: Color(0xFF606060),
      child: Column(
        children: [
          Text('Get In Touch',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
          SizedBox(height: 20,),
          ConstrainedBox(constraints: BoxConstraints(
            maxWidth: 700,
          ),
          child: LayoutBuilder(builder: (context,Constrained){
            if(Constrained.maxWidth>=600.0){
              return TextFieldDeskop();
            }else{
              return TextFieldMobile();
            }
          }),),
          SizedBox(height: 15,),
          CustomTextfield(
            hinttext: 'Your Message',
            maxlines: 15,
          ),
          SizedBox(height: 15,),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: 700
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: elevatedButtonWidget(
                  onPressed: (){},
                  title: 'Get In Touch'
              ),
            ),
          ),
          SizedBox(height: 20,),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: 300
            ),
            child: Divider(),),
          SizedBox(height: 20,),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                child: Image.asset('assets/Images/github.png',width: 28,),
                onTap: (){
                  js.context.callMethod("open",[SocialLinks.github]);
                },),
              InkWell(
                child: Image.asset('assets/Images/linkedin.png',width: 28,),
                onTap: (){
                  js.context.callMethod("open",[SocialLinks.linkedin]);
                },),
              InkWell(
                child: Image.asset('assets/Images/facebook.png',width: 28,),
                onTap: (){
                  js.context.callMethod("open",[SocialLinks.facebook]);
                },),
              InkWell(
                child: Image.asset('assets/Images/instagram.png',width: 28,),
                onTap: (){
                  js.context.callMethod("open",[SocialLinks.instagram]);
                },),
            ],
          )
        ],
      ),

    );
  }
}
