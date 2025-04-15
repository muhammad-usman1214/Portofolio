import 'package:flutter/material.dart';
import 'dart:js' as js;

import '../Utils/ProjectUtils.dart';
class Work_ProjectCard extends StatelessWidget {
  Work_ProjectCard({ super.key,required this.project});
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {

    //Work Project Card
    return
      Container(
        clipBehavior: Clip.antiAlias,
        height: 290,
        width: 260,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black12.withOpacity(0.4)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(project.Image,
              width: 260,
              height: 140,
              fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.fromLTRB(12,10,12,8),
              child: Text(project.title,
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12,0,12,10),
              child: Text(project.subtitle,
                style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,color: Colors.white),),
            ),
            Spacer(),
            Container(
              color: Colors.black38,
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
              child: Row(
                children: [
                  Text('Available on:',
                    style: TextStyle(fontSize: 10,color: Colors.orange),),
                  Spacer(),
                  if(project.ioslink!=null)
                  Image.asset('assets/Projects/ios2.png',width: 17,),
                 if(project.androidlink!=null)
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: InkWell(
                      onTap: (){
                        js.context.callMethod("open",[project.androidlink]);
                      },
                        child: Image.asset('assets/Projects/android2.png',width: 17,)),
                  ),
                  if(project.weblink!=null)
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: InkWell(
                        onTap: (){},
                        child: Image.asset('assets/Projects/website.png',width: 17,)),
                  ),
                  if(project.gitHubLink!=null)
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                    child:InkWell(
                      onTap: () {
                        js.context.callMethod("open",[project.gitHubLink]);
                      },
                      child: Image.asset(
                        'assets/Images/github.png',
                        width: 17,
                      ),
                    ),
                  )
              ],
              ),
            )
          ],
        ),

      );
  }
}
