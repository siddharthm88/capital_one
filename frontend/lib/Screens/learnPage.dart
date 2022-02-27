import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_api/youtube_api.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  _LearnPageState createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  static String api_key = 'AIzaSyDorUGQUjojOjtIO2CNUMEmmfXUIVD5xYo';
  YoutubeAPI ytapi = new YoutubeAPI(api_key);
  List<YouTubeVideo> ytResult = [];
  bool _isloading = false;

  Future<void> callAPI() async {
    String query = "Crypto Currency USA";
    ytResult = await ytapi.search(
      query,
      regionCode: 'CA',
      order: 'relevance',
      videoDuration: 'any',
    );
    ytResult = await ytapi.nextPage();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    callAPI();
    print('hello');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          backgroundColor: Colors.white12,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Edify".toUpperCase(),
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              Text(
                "Capital One",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: Color.fromRGBO(38, 144, 186, 1),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 13,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: ytResult.length,
                itemBuilder: (BuildContext context, int index) =>
                    listItem(index),
              ),
            ),
            Expanded(
              child: Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 70,
                      width: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(38, 144, 186, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.creditcard_fill,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Banking".toUpperCase(),
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                     Container(
                       margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 70,
                      width: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(38, 144, 186, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.shield_lefthalf_fill,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Frauds".toUpperCase(),
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                     Container(
                       margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                        color: Colors.lightBlueAccent.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 70,
                      width: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(38, 144, 186, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.bitcoin,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Crypto".toUpperCase(),
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                     Container(
                       margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 70,
                      width: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(38, 144, 186, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.money_dollar,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Stocks".toUpperCase(),
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              flex: 21,
            )
          ],
        ),
      ),
    );
  }

  Widget listItem(index) {
    return InkWell(
      onTap: () async {
        final _url = ytResult[index].url;
        await canLaunch(_url)
            ? await launch(_url)
            : throw 'Error launching URL';
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          color: Colors.grey.shade300,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
                borderRadius: BorderRadius.circular(6),
                // color: Colors.white,
                border: Border.all(color: Colors.white54)),
            height: 200,
            width: 200,
            child: Column(
              children: [
                Image.network(ytResult[index].thumbnail.high.url ?? '',
                    fit: BoxFit.fill),
                Text("${(ytResult[index].title)}",
                    style: GoogleFonts.ubuntu(
                        color: Colors.black,
                        fontSize: ytResult[index].title.length >= 30 ? 13 : 16,
                        fontWeight: FontWeight.w700))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
