import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountsPage extends StatelessWidget {
  AccountsPage({ Key? key }) : super(key: key);

  final _controller = ScrollController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://s3-alpha-sig.figma.com/img/87ae/9488/d31bd7e99caa4ffdb6af92318e8e511d?Expires=1646006400&Signature=YJ2zJBiHbDgk3oDV-WlvSGmsyRhs11Sl~wFoRSXy-vlchI1NXFie7uIW8jcM08FnqQcY2UlKZ80-ySn6apQQ9reAHTygZBp96lGR2ikE-1AxMUncXJeBaoBpJFw1u8eRzVqN9E91QZEEtQFVgZrcnMNEKCoWbqXc9x1K3J9wrsV0~7mbFlX3P01KWhOP1l3WTD0XSWxuVszhSS7PwIXN-Ts1LWGqz2Uo0FuG9Pzvu38ZyMXJwJsIlRiFBO0W-VUeROS4Gc9n6EHgOfIEQ6ho3-S3Tb3xtZs3HN5eMughvoY8TVlIqIgVM5r8PifIlPmKLlhc7ETykO3ecLXvis6fEw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                  ),
                ),
              ),
            ),
            Expanded(
              child: FadingEdgeScrollView.fromSingleChildScrollView(
                child: SingleChildScrollView(
                  controller: _controller,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 20, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Siddharth Mishra",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                                Text("7129 8932 822",style: GoogleFonts.poppins(fontWeight: FontWeight.w500),),
                              ],
                            ),
                            Icon(CupertinoIcons.person_add_solid)
                          ],
                        ),
                      ),
                    SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 340,
                      height: 570,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(
                            "https://cdn.discordapp.com/attachments/939350598388711455/947462697493078056/take_this.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}