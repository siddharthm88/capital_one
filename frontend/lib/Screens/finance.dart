import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinancePage extends StatelessWidget {
  FinancePage({Key? key}) : super(key: key);

  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 145,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://cdn.discordapp.com/attachments/939350598388711455/944687728434487326/Group_2060Searcaah.png",
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
                        padding: const EdgeInsets.fromLTRB(30.0, 20, 20, 0),
                        child: Text("Send Money",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                      ),
                    
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 340,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(
                            "https://cdn.discordapp.com/attachments/939350598388711455/944686855402713098/Group_2059payment2.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 20, 20, 0),
                    child: Text("Loans & Credit Card",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 340,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(
                            "https://cdn.discordapp.com/attachments/939350598388711455/944687396786700319/Group_2062fdggd.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 20, 20, 0),
                    child: Text("Insurance Services",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 340,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(
                            "https://cdn.discordapp.com/attachments/939350598388711455/944687396597940314/Group_2063ssd.png"
                            ,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 20, 20, 0),
                    child: Text("Grow your Wealth",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 340,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(
                            "https://cdn.discordapp.com/attachments/939350598388711455/944687396597940314/Group_2063ssd.png",
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
