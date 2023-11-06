import 'package:basic_utils_flutter/app_export.dart';
import 'package:basic_utils_flutter/dialog/dialog_utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO ADD
      navigatorKey: NavigatorService.navigatorKey,
      title: 'Flutter Demo',
      // initialRoute: AppRoutes.myScreen,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            // * ALERT
            ElevatedButton(
              onPressed: () {
                DialogUtils.showAlertDialog(
                    context: context, message: "Message", title: "title");
              },
              child: Text("SimpleErrorDialog"),
            ),

            // * ALERT
            ElevatedButton(
              onPressed: () {
                DialogUtils.showErrorDialog(
                    context: context, message: "Message", title: "title");
              },
              child: Text("ErrorDIalog"),
            ),
            ElevatedButton(
              onPressed: () {
                DialogUtils.showErrorDialogWithRoute(
                    context: context,
                    message: "Message",
                    title: "title",
                    route: AppRoutes.myScreen);
              },
              child: Text("ErrorDIalogWithRoute"),
            ),
            ElevatedButton(
              onPressed: () {
                DialogUtils.showConfirmDialogWithRoute(
                    context: context,
                    message: "dsadsad",
                    title: "title",
                    route: AppRoutes.myScreen);
              },
              child: Text("ConfirmDialogWithRoute"),
            ),
            ElevatedButton(
              onPressed: () {
                DialogUtils.showConfirmDialog(
                    context: context, message: "Message", title: "title");
              },
              child: Text("ConfirmDialog"),
            ),

            ElevatedButton(
              onPressed: () {
                DialogUtils.showDialogPermission(
                    context: context, message: "Message", title: "title");
              },
              child: Text("DialogPermission"),
            ),
            ElevatedButton(
              onPressed: () {
                DialogUtils.showLogOutDialog(
                    context: context);
              },
              child: Text("LogOut"),
            ),
            ElevatedButton(
              onPressed: () {
                ProgressDialogUtils.showProgressDialog();
              },
              child: Text("ProgressDialog"),
            ),
            
          ],
        ),
      ),
    );
  }
}
