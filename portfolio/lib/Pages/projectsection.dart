import 'package:flutter/material.dart';

import '../Utils/ProjectUtils.dart';
import '../Widgets/WorkPrjects.dart';
class Project_Section extends StatelessWidget {
  const Project_Section({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: Color(0xFF606060).withOpacity(0.2),
      child:Column(
        children: [
          Text('Work Projects',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
          SizedBox(height: 20,),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: 900
            ),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for(int i=0;i<WorkProjectUtils.length;i++)
                  Work_ProjectCard(project: WorkProjectUtils[i],),
              ],
            ),
          ),
          SizedBox(height: 60,),
          Text('Hobby Projects',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
          SizedBox(height: 20,),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: 900
            ),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for(int i=0;i<HobbyProjectUtils.length;i++)
                  Work_ProjectCard(project: HobbyProjectUtils[i],),
              ],
            ),
          )

        ],
      ),
    );
  }
}
