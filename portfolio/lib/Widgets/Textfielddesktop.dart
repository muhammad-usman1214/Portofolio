import 'package:flutter/cupertino.dart';

import 'Textfield.dart';

Widget TextFieldDeskop() {
  return Row(
    children: [
      Flexible(
          child: CustomTextfield(
        hinttext: 'Your Name',
      )),
      SizedBox(
        width: 10,
      ),
      Flexible(
          child: CustomTextfield(
        hinttext: 'Your Email',
      ))
    ],
  );
}
Widget TextFieldMobile() {
  return Column(
    children: [

           CustomTextfield(
            hinttext: 'Your Name',
          ),
      SizedBox(
        height: 15,
      ),
       CustomTextfield(
            hinttext: 'Your Email',
          )
    ],
  );
}