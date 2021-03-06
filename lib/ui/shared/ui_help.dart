import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarbiyat_app/ui/shared/app_color.dart';
import 'package:tarbiyat_app/ui/shared/font_size.dart';
import 'package:tarbiyat_app/widget/my_text.dart';
import 'package:encrypt/encrypt.dart' as Encrypt;


class UIHelper {
  static const double borderRadius = 4.0;
  static const double screenPadding = 0.05;

//  static String noConnection = T.Please_Check_Your_Internet_Connection;
//  static String sthWentWrong = T.Oops_Something_Went_Wrong;
//  static String timeOut = T.Server_not_Responding_pls_try_again;
//  static String sthWentWrongPayment = T.Payment_issue;

  static String permissionDenied = "Permission Denied";
  static String permissionDeniedNeverAsk =
      "Permission Denied, Please enable it from phone settings";

  static appBarText() {
    return TextStyle(
      fontWeight: FontWeight.w700,
      color: AppColor.blackColor,
    );
  }

  static subHeading() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColor.blackColor,
      fontSize: FontSize.xxl,
    );
  }

  static optional() {
    return TextStyle(
      color: AppColor.primaryColor,
      fontSize: FontSize.m,
      fontWeight: FontWeight.w500,
    );
  }

  static formText() {
    return TextStyle(
      fontSize: FontSize.xl,
      color: AppColor.darkGrey,
    );
  }

  static formHintText() {
    return TextStyle(
      fontSize: FontSize.xl,
      color: AppColor.lightGrey,
    );
  }

  static texFormStyle() {
    return TextStyle(
      color: Colors.grey,
      fontSize: FontSize.l,
    );
  }

  static heading(String text) {
    return Container(
      color: AppColor.primaryColor,
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(
            text,
            style: TextStyle(
              fontSize: FontSize.xxl,
              fontWeight: FontWeight.bold,
              color: AppColor.whiteColor,
            ),
          ),
        ],
      ),
    );
  }

  static String priceFormat(String price) {
    return "￠${double.parse(price.toString()).toStringAsFixed(2)}";
  }

  static String changeForm(String name) {
    String changed = name.toLowerCase()[0].toUpperCase() +
        name.toLowerCase().substring(1, name.length);
    return changed;
  }

  static String cardNumberFilter(String cardNumber) {
    String star = "xxxx xxxx xxxx ";
    String fourDigit =
    cardNumber.substring(cardNumber.length - 4, cardNumber.length).trim();
    return star + fourDigit;
  }

  static final key = Encrypt.Key.fromLength(32);
  static final iv = Encrypt.IV.fromLength(8);
  static final encrypter = Encrypt.Encrypter(Encrypt.Salsa20(key));

  static String encryptData(String data) {
    return encrypter
        .encrypt(data, iv: iv)
        .base64
        .toString();
  }

  static String decryptData(String encryptedData) {
    return encrypter
        .decrypt(Encrypt.Encrypted.fromBase64(encryptedData), iv: iv)
        .toString();
  }

  static showMessage(_scaffoldKey, msg) {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(
          msg,
        ),
      ),
    );
  }

  static formDecorationWithLabel(String labelText) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(
        color: Colors.grey,
        fontSize: FontSize.l,
      ),
      counterText: "",
      fillColor: AppColor.backgroundColor,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.lightGrey,
          width: 1.2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.darkGrey,
          width: 1.3,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.redColor,
          width: 1.2,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.redColor,
          width: 1.3,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
    );
  }

  static formDecorationWithHint(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: FontSize.l,
      ),
      counterText: "",
      fillColor: AppColor.backgroundColor,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.lightGrey,
          width: 1.2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.darkGrey,
          width: 1.3,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.redColor,
          width: 1.2,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.redColor,
          width: 1.3,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
    );
  }

  static formDecorationWithHintForPassword(
      {String hintText, Icon icon, GestureTapCallback onPressed}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: FontSize.l,
      ),
      suffixIcon: IconButton(
        icon: icon,
        color: AppColor.primaryColor,
        onPressed: onPressed,
      ),
      counterText: "",
      fillColor: AppColor.backgroundColor,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.lightGrey,
          width: 1.2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.darkGrey,
          width: 1.3,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.redColor,
          width: 1.2,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.redColor,
          width: 1.3,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
    );
  }

  static formDecorationWithHintNormal(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: FontSize.l,
      ),
      counterText: "",
      fillColor: AppColor.backgroundColor,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
    );
  }

  static formDecorationPromotionalCode(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: AppColor.primaryColor,
        fontSize: FontSize.m - 1,
      ),
      counterText: "",
      fillColor: AppColor.lightestLightestGrey,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.lightestLightestGrey,
          width: 0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColor.lightestLightestGrey,
          width: 0,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 10.0,
      ),
    );
  }
}