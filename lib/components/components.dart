import 'package:flutter/material.dart';
import 'package:web_project/Utilities/colors.dart';

import '../Utilities/sdp.dart';

Widget DummyBlogCard(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.only(bottom: 10),
    width: 800,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.transparent,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    backgroundColor: primaryAccentColor,
                    radius: 22,
                    backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/ogw/AAEL6shtRiEk0CbnJmKpttLcKDkjCm41A7SsikvXCVE3o18=s32-c-mo',
                    ),
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.green,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.transparent,
                      child: Text(
                        'Avishek Verma',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                          fontSize: 14,
                          color: Colors.grey.shade700,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "12 Aug, 2022",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              // Visibility(
              //   visible: widget.snap['uid'] == Userdetails.uid,
              //   child: IconButton(
              //     onPressed: () {
              //       showModalBottomSheet(
              //         context: context,
              //         isScrollControlled: true,
              //         backgroundColor:
              //             isDarkMode ? Colors.blueGrey.shade900 : Colors.white,
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.vertical(
              //             top: Radius.circular(20),
              //           ),
              //         ),
              //         builder: (context) {
              //           return MenuModal(widget.snap['blogId']);
              //         },
              //       );
              //     },
              //     icon: Icon(
              //       Icons.more_horiz,
              //       color: Colors.grey.shade500,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
        SizedBox(
          height: 13,
        ),

        ///////////////////// DESCRIPTION AREA ///////////////////////

        // Visibility(
        //   visible: !Uri.parse(widget.snap['description']).isAbsolute,
        //   child: Padding(
        //     padding: EdgeInsets.only(top: 10),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Icon(
        //           Icons.link,
        //           color: isDarkMode ? blueGreyColorDark : greyColor,
        //         ),
        //         Linkify(
        //           linkStyle: TextStyle(
        //             color:
        //                 isDarkMode ? primaryAccentColor : primaryColor,
        //             fontWeight: FontWeight.w500,
        //             fontSize: widget.snap['description'].length > 100
        //                 ? sdp(context, 13)
        //                 : sdp(context, 17),
        //             letterSpacing: 0.4,
        //             decoration: TextDecoration.none,
        //           ),
        //           onOpen: (link) async {
        //             if (await canLaunchUrl(Uri.parse(link.url))) {
        //               await launchUrl(
        //                 Uri.parse(link.url),
        //                 mode: LaunchMode.externalApplication,
        //               );
        //             } else {
        //               throw 'Could not launch $link';
        //             }
        //           },
        //           text: widget.snap['description']
        //               .toString()
        //               .replaceAll('/:', ':'),
        //           style: TextStyle(
        //             letterSpacing: 0.5,
        //             fontWeight: FontWeight.w500,
        //             fontSize: widget.snap['description'].length > 100
        //                 ? sdp(context, 13)
        //                 : sdp(context, 17),
        //             color: isDarkMode
        //                 ? Colors.grey.shade300
        //                 : Colors.grey.shade800,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   replacement:
        Text(
          '“Our greatest glory is not in never falling, but in rising every time we fall” – Confucius',
          style: TextStyle(
            letterSpacing: 0.5,
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w400,
            fontSize: sdp(context, 7),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        DummyDoubleLikePreview(),
        SizedBox(
          height: 20,
        ),
        Row(
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
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
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
      ],
    ),
  );
}

Widget DummyDoubleLikePreview() {
  return Row(
    children: [
      Container(
        width: 80,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: CircleAvatar(
                radius: 17,
                backgroundColor: primaryColor,
                backgroundImage: NetworkImage(
                    'https://nypost.com/wp-content/uploads/sites/2/2022/09/will-smith-2.jpg'),
              ),
            ),
            Positioned(
              left: 27,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: CircleAvatar(
                  radius: 17,
                  backgroundColor: primaryColor,
                  backgroundImage: NetworkImage(
                      'https://images.squarespace-cdn.com/content/v1/5619faf4e4b0a6f765ecd555/1596447632878-BIERMXFQ87993ADPV0K9/Robert-Downey-Jr..jpg?format=1500w'),
                ),
              ),
            ),
          ],
        ),
      ),
      Text(
        '12K People have liked',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      )
    ],
  );
}
