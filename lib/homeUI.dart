import 'package:flutter/material.dart';
import 'package:web_project/Utilities/colors.dart';
import 'package:web_project/components/components.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({Key? key}) : super(key: key);

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "!nspire",
                    style: TextStyle(
                      fontSize: 37,
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  DownloadBtn(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: FittedBox(
                      child: Image.asset(
                        'assets/images/logo.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '"Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle."',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(20),
                height: 90,
                width: 800,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey.shade100,
                      Colors.white,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Row(
                  children: [
                    ///////////////////// LIKE BUTTON ///////////////////////
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite_outline,
                            color: primaryColor,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "12K",
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Spacer(),
                    ///////////////////// COMMENT BUTTON ///////////////////////
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                      child: Row(
                        children: [
                          Icon(
                            Icons.comment,
                            color: Colors.grey.shade600,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "100 Comments",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: DummyBlogCard(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell DownloadBtn() {
    return InkWell(
      onTap: () {},
      onHover: (bool isHover) {
        print(isHover);
        setState(() {
          isHovering = isHover;
        });
      },
      borderRadius: BorderRadius.circular(20),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            isHovering
                ? BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 100,
                    spreadRadius: 10,
                  )
                : BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 100,
                    spreadRadius: 10,
                  ),
          ],
        ),
        child: Text(
          'Download Now',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}
