
import 'package:basic_utils_flutter/localization/app_localization.dart';
import 'package:basic_utils_flutter/routes/navigator_service.dart';
import 'package:basic_utils_flutter/app_export.dart';

import 'package:flutter/material.dart';

import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import 'package:shared_preferences/shared_preferences.dart';



class DialogUtils {


  static void showAlertDialog({
    required BuildContext context,
    required String message,
    required String title,
  }) {
    Dialogs.materialDialog(
        msg: message,
        title: title,
        color: Colors.white,
        context: context,
        actions: [
          SizedBox(width: 50),
          IconsOutlineButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            text: 'Close',
            iconData: Icons.cancel_outlined,
            textStyle: TextStyle(color: Colors.grey),
            iconColor: Colors.grey,
          ),
          SizedBox(width: 50)
        ]);
    return;
  }

  static void showErrorDialog({
    required BuildContext context,
    required String message,
    required String title,
  }) {
    Dialogs.materialDialog(
        msg: message,
        title: title,
        color: Colors.white,
        context: context,
        actions: [
          SizedBox(width: 50),
          IconsOutlineButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            text: 'Ok',
            iconData: Icons.cancel_outlined,
            textStyle: TextStyle(color: Colors.white),
            iconColor: Colors.white,
            color: Colors.red,
          ),
          SizedBox(width: 50)
        ]);
    return;
  }

  static void showErrorDialogWithRoute({
    required BuildContext context,
    required String message,
    required String title,
    required String route,
  }) {
    Dialogs.materialDialog(
        msg: message,
        title: title,
        color: Colors.white,
        context: context,
        actions: [
          SizedBox(width: 50),
          IconsOutlineButton(
            onPressed: () {
              NavigatorService.pushNamedAndRemoveUntil(route);
            },
            text: 'Ok',
            iconData: Icons.cancel_outlined,
            textStyle: TextStyle(color: Colors.white),
            iconColor: Colors.white,
            color: Colors.red,
          ),
          SizedBox(width: 50)
        ]);
    return;
  }







  static void showDialogPermission({
    required BuildContext context,
    required String message,
    required String title,
  }) {
    BuildContext? dialogContext = NavigatorService.navigatorKey.currentContext;
    Dialogs.materialDialog(
        msg: message,
        useSafeArea: false,
        title: title,
        color: Colors.white,
        context: context,
        dialogWidth: double.maxFinite,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: IconsButton(
              onPressed: () {
                Navigator.of(dialogContext!).pop();
                // openAppSettings();
              },
              color: Colors.teal,
              textStyle: TextStyle(color: Colors.white),
              text: 'lbl_mylabel',
            ),
          ),
          // IconsOutlineButton(
          //
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //     openAppSettings();
          //   },
          //   color: Colors.deepOrangeAccent,
          //   text: 'Impostazioni',
          //   iconData: Icons.cancel_outlined,
          //   textStyle: TextStyle(color: Colors.grey),
          //   iconColor: Colors.grey,
          // ),
        ]);
    return;
  }

  static void showConfirmDialogWithRoute({
    required BuildContext context,
    required String message,
    required String title,
    required String route,
  }) {
    Dialogs.materialDialog(
        msg: message,
        title: title,
        color: Colors.white,
        context: context,
        actions: [
          SizedBox(width: 50),
          IconsOutlineButton(
            onPressed: () {
              NavigatorService.pushNamedAndRemoveUntil(route);
            },
            text: 'Ok',
            iconData: Icons.check_circle,
            textStyle: TextStyle(color: Colors.white),
            iconColor: Colors.white,
            color: Colors.green,
          ),
          SizedBox(width: 50)
        ]);
    return;
  }

  static void showConfirmDialog({

    required BuildContext context,
    required String message,
    required String title,
  }) {
    Dialogs.materialDialog(
        msg: message,
        title: title,
        color: Colors.white,
        context: context,
        actions: [
          SizedBox(width: 50,),
          IconsOutlineButton(
            onPressed: () {
              Navigator.of(context).pop();
              // NavigatorService.pushNamedAndRemoveUntil(
              //     AppRoutes.f2MainviewContainerScreen);
            },
            text: 'Ok',
            textStyle: TextStyle(color: Colors.white),
            color: Colors.green,
          ),
          SizedBox(width: 50)
        ]);
    return;
  }







  static void showConfirmDialogNoImage({
    required BuildContext context,
    required String message,
    required String title,
  }) {
    Dialogs.materialDialog(
        msg: message,
        title: title,
        color: Colors.white,
        context: context,
        actions: [
          IconsOutlineButton(
            onPressed: () {
              // NavigatorService.pushNamedAndRemoveUntil(
              //     AppRoutes.f2MainviewContainerScreen);
            },
            text: 'Ok',
            textStyle: TextStyle(color: Colors.white),
            iconColor: Colors.white,
            color: Colors.green,
          ),
        ]);
    return;
  }

  static void showLogOutDialog({
    required BuildContext context,
    // required Function() loOugMethod;
  }) {
    BuildContext? dialogContext = NavigatorService.navigatorKey.currentContext;
    if (dialogContext != null) {

    } else {

    }
    Dialogs.materialDialog(
        msg: 'logout_msg'.tr ,
        title: 'logout_title'.tr ,
        context: context,
        actions: [
          IconsOutlineButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Navigator.of(dialogContext!).pop();
            },
            text: 'lbl_cancel'.tr ,
            iconData: Icons.cancel_outlined,
            textStyle: TextStyle(color: Colors.grey),
            iconColor: Colors.grey,
          ),
          IconsButton(
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              String? sessionToken = prefs.getString('sessionToken');

              if (sessionToken != null) {
                await prefs.remove('sessionToken');

                // final user = await ParseUser.currentUser() as ParseUser;
                // var response = await user.logout();

                // if (response.success) {
                //   Logger.log("User was successfully logged out");
                //   NavigatorService.pushNamedAndRemoveUntil(
                //       AppRoutes.f1WelcomebackScreen);
                // } else {
                //   Logger.log("Error LOG OUT");
                // }
              }
            },
            text: 'Log out',
            iconData: Icons.logout,
            color: Colors.red,
            textStyle: TextStyle(color: Colors.white),
            iconColor: Colors.white,
          ),
        ]);
  }


}