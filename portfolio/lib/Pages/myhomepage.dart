import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Pages/projectsection.dart';
import '../Widgets/Drawermobile.dart';
import '../Widgets/MainDesktop.dart';
import '../Widgets/MainMobile.dart';
import '../Widgets/SkillsMobile.dart';
import '../Widgets/header_desktop.dart';
import '../Widgets/header_mobile.dart';
import '../Widgets/skillsDesktop.dart';
import 'contactsection.dart';
import 'package:hexcolor/hexcolor.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final scaffoldKey=GlobalKey<ScaffoldState>();
  final scrollController=ScrollController();
  final List<GlobalKey> navbarKeys=List.generate(4, (index)=>GlobalKey());


  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: ( BuildContext context ,constraints){
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black38.withOpacity(0.8),
          //Drawer
          endDrawer:constraints.maxWidth>=600.0
              ?null
              : Drawer_Mobile(onnavItemTape: (int navIndex){
            scaffoldKey.currentState?.closeEndDrawer();
            scrollToSection(navIndex);
          },),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection:Axis.vertical,
            child: Column(
              children: [
                SizedBox(key:navbarKeys.first ,),
                // Navigation Bar
                if(constraints.maxWidth>=600.0)
                  HeaderDesktop(onNavMenuTape: (int navIndex){
                    scrollToSection(navIndex);
                  },)
                else
                  HeaderMobile(
                    onMenuTap: (){
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                //Main Section
                if(constraints.maxWidth>=600.0)
                  Main_Desktop() else
                  Main_Mobile(),

                //Skills Section=>Platform set
                Container(
                  key: navbarKeys[1],
                  width: screenwidth,
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: HexColor('14110B').withOpacity(0.3),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'What I Can Do',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      if (constraints.maxWidth >= 800)
                        Skills_Desktop()
                      else
                      //Mobile skills Section
                        Skills_Mobile(),
                    ],
                  ),
                ),

                //Project Section
                Project_Section(
                  key: navbarKeys[2],
                ),
                //Contact Section
                Contact_Section(
                  key: navbarKeys[3],
                ),
                //footer section
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  child: Text('Made By Muhammad Usman With Flutter 3.29',style:TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white) ,),
                )

              ],
            ),
          ),

        );
      },
    );
  }
  void scrollToSection(int navIndex){
    if(navIndex==4){
      //open blog section
      return;
    }
    final key=navbarKeys[navIndex];
    Scrollable.ensureVisible(
        key.currentContext!,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut);

  }
}
