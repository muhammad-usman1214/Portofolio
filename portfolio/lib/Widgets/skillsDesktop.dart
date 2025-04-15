import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../Constaints/NavbarLists.dart';
class Skills_Desktop extends StatelessWidget {
  const Skills_Desktop({super.key});

  @override
  Widget build(BuildContext context) {

    return  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: 450
                ),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    for(int i=0;i<plafForms.length;i++)
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black38.withOpacity(0.5),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10
                          ),
                          leading: Image.asset(plafForms[i]["Img"],color: Colors.white,width: 27,),
                          title: Text(plafForms[i]["title"],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),

                        ),
                      )
                  ],
                ),
              ),
              //Skills Section=>Platform set
              SizedBox(width: 40,),
              Flexible(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth:500
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      for(int i=0;i<skillsSet.length;i++)
                        Chip(
                          
                          label: Text(skillsSet[i]["title"],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                          avatar: Image.asset(skillsSet[i]["Img"]),
                          backgroundColor: Colors.black38.withOpacity(0.8),
                        )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      );
  }
}
