import 'package:flutter/material.dart';

class AppRoutes {
  static const String myScreen = 'myScreen';

  static Map<String, WidgetBuilder> get routes => {



        //***************************************************************************************
        //* Simple Screen Builder
        // myScreen: MyScreen.builder,
        //***************************************************************************************

    
    
        //***************************************************************************************
        //* Screen Builder with Custom Arguments
        //     myScreen: (context) {
        //   final args =
        //       ModalRoute.of(context)!.settings.arguments as CustomArguments;
        //   CustomArguments argument = args;

        //   Logger.log("VALIDO");
        //   return MyScreen.builder(
        //     context,
        //     argument.obj1,
        //     argument.obj2,
        //   );
        // },
        //***************************************************************************************







      };
}




class CustomArguments {
  final Object obj1;
  final Object obj2;

  CustomArguments(this.obj1, this.obj2);
}