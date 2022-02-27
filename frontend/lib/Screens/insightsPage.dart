import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InsightsPage extends StatefulWidget {
  const InsightsPage({Key? key}) : super(key: key);

  @override
  _InsightsPageState createState() => _InsightsPageState();
}

class _InsightsPageState extends State<InsightsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Insights",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Set Budget",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            Container(
              height: 328,
              width: 330,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                    "https://media.discordapp.net/attachments/939350598388711455/944905779557834812/Group_172nice.png?width=716&height=670",
                  ),
                ),
              ),
            ),
            Container(
              height: 109,
              width: 330,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                    "https://media.discordapp.net/attachments/939350598388711455/944907379554807898/Details_Cardbudget.png?width=881&height=291",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: GestureDetector(
                    onTap: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.WARNING,
                        headerAnimationLoop: false,
                        animType: AnimType.TOPSLIDE,

                        showCloseIcon: false,
                        closeIcon: Icon(Icons.close_fullscreen_outlined),
                        title: 'Alert',
                        desc:
                            'We expected an expenditure of 1,500 dollars on food this month. This month you have spend 2,000 dollars. Due to this, you have overgone your budget!',
                        btnCancelOnPress: () {},
                        onDissmissCallback: (type) {
                          debugPrint('Dialog Dissmiss from callback $type');
                        },
                        btnOkOnPress: () {})
                      ..show();
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 244,
                          width: 330,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: NetworkImage(
                                "https://cdn.discordapp.com/attachments/939350598388711455/944920605675888650/Group_2083spent.png",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
