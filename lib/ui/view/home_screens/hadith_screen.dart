import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarbiyat_app/ui/shared/app_color.dart';
import 'package:tarbiyat_app/ui/shared/font_size.dart';
import 'package:tarbiyat_app/widget/vertical_spacing.dart';

class HadithScreenView extends StatefulWidget {
  _HadithScreenViewState createState() => _HadithScreenViewState();
}

class _HadithScreenViewState extends State<HadithScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColor.whiteColor),
        backgroundColor: AppColor.primaryColor,
        title: Text(
          'Hadiths',
          style: TextStyle(),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.add_alert,
                color: AppColor.whiteColor,
              ),
              onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/image/mosque.png',
                fit: BoxFit.fill,
                width: 450,
              ),
              Positioned(
                  top: 10,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '29',
                        style: TextStyle(
                          color: AppColor.whiteColor,
                          fontSize: FontSize.xxxl,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Jumada 1, 1422',
                        style: TextStyle(
                          color: AppColor.whiteColor,
                          fontSize: FontSize.xl,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Wednesday, January 2,2021',
                        style: TextStyle(
                          color: AppColor.whiteColor,
                          fontSize: FontSize.xl,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      VerticalSpacing(height: 0.1),
                      Text(
                        'Isha',
                        style: TextStyle(
                          color: AppColor.whiteColor,
                          fontSize: FontSize.xxxl,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Next is Fajar',
                        style: TextStyle(
                          color: AppColor.whiteColor,
                          fontSize: FontSize.xl,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' 05:41 AM',
                        style: TextStyle(
                          color: AppColor.whiteColor,
                          fontSize: FontSize.xl,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ))
            ],
          ),
          VerticalSpacing(height: 0.01),
          _button()
        ],
      ),
    );
  }
  _button() {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: Center(
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'AL-Bukhari',
                            style: TextStyle(
                                color: AppColor.blackColor,
                                fontSize: FontSize.xxl),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: Center(
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'AL-Muslim',
                            style: TextStyle(
                                color: AppColor.blackColor,
                                fontSize: FontSize.xxl),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              VerticalSpacing(height: 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: Center(
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'AL-Tirmazi',
                            style: TextStyle(
                                color: AppColor.blackColor,
                                fontSize: FontSize.xxl),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: Center(
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Abu Dawood',
                            style: TextStyle(
                                color: AppColor.blackColor,
                                fontSize: FontSize.xxl),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              VerticalSpacing(height: 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: Center(
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'AL-Nasai',
                            style: TextStyle(
                                color: AppColor.blackColor,
                                fontSize: FontSize.xxl),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: Center(
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'AL-Silsila',
                            style: TextStyle(
                                color: AppColor.blackColor,
                                fontSize: FontSize.xxl),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              VerticalSpacing(height: 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: Center(
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Mishkat',
                            style: TextStyle(
                                color: AppColor.blackColor,
                                fontSize: FontSize.xxl),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: Center(
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Bookmark',
                            style: TextStyle(
                                color: AppColor.blackColor,
                                fontSize: FontSize.xxl),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
