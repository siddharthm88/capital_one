import 'package:capital_one/Screens/accountsPage.dart';
import 'package:capital_one/Screens/finance.dart';
import 'package:capital_one/Screens/insightsPage.dart';
import 'package:capital_one/Screens/learnPage.dart';
import 'package:capital_one/group_chats/group_chat_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = ScrollController();

  List data = [
    {
      'url':
          'https://media.discordapp.net/attachments/939350598388711455/944654803898863626/Vectornike.png',
      'name': 'Nike Air Max 2022',
      'date': '27 Frb 2022',
      'amount': '-\$243.00',
      'color': Colors.redAccent,
    },
    {
      'url':
          'https://s3-alpha-sig.figma.com/img/2db0/4517/2fb837656146780ffca07b48cd5c5e98?Expires=1646006400&Signature=fIZKRlUcH9eANl4imByqwGNEii2qb0xzprA41ZMzw8vVE3KCY8Uy~jmql~~P45yGjwGRN1GbthZhAQ6vT1B2Oq1NAy~KeL0HJkWQOZ0w7WmEhrST6FMgoMBIMsHdGs1WpK07Rna2FZmH09qAb6JPgJvEXxV~tiS5cEhsFVNd5kgXKglXA26Hx3WRXSDVpmG2gcqJc516BBVNmIIxfQ-vnyInsMgpoaMoFARAzGKNGTx1DOyNm8ry78YhmE5X-odv5g8bHkC9qhNvBpONlI4~Xqd0K6krqjP5e908LSjrzokmeewLEGcQZJP~u-xbqVxCgIoD4lMnWze5E~VLYcVvAA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
      'name': 'Uber',
      'date': '26 Feb 2022',
      'amount': '+\$50.00',
      'color': Colors.greenAccent.shade700,
    },
    {
      'url':
          'https://s3-alpha-sig.figma.com/img/3bd6/b896/957720d3613163edb56e9f3274a43515?Expires=1646006400&Signature=JNJGGwwLmfuClzyzFmdLdZhzdkorP-Ip4wWRBPIQBplI5VYwRZIyo8GyDKPEwhc3GZRUU7kx62cCASPaHBbbDporMpAYrABJiNuja-RhhHzikkPo4nvs1O6rDEP5L0e2488-PCirI1RtOIfS7EcwW4SyB07WbUMiUoQDQwQvLcwPvClOQ9ALoV7EbHkjAHH9Wr21ovBSNBU5PVd8kRkzORlR-N7s9wZru2UFfMtu~zcetjGLX51J20rsOFrJ5rvpMFoAo3luEzXo1OkrMndUenB594mZEkr9F8K0eqdCMXSMwgWUtub4PlNh7ycrpZ3cjQLhQn34iT55cx~lIxerlA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
      'name': 'iPad Pro',
      'date': '25 Feb 2022',
      'amount': '-\$799.99',
      'color': Colors.redAccent,
    },
    {
      'url':
          'https://media.discordapp.net/attachments/939350598388711455/944660232322285678/Vectorstar.png',
      'name': 'Starbucks coffee',
      'date': '25 Feb 2022',
      'amount': '-\$20.00',
      'color': Colors.redAccent,
    },
    {
      'url':
          'https://s3-alpha-sig.figma.com/img/2db0/4517/2fb837656146780ffca07b48cd5c5e98?Expires=1646006400&Signature=fIZKRlUcH9eANl4imByqwGNEii2qb0xzprA41ZMzw8vVE3KCY8Uy~jmql~~P45yGjwGRN1GbthZhAQ6vT1B2Oq1NAy~KeL0HJkWQOZ0w7WmEhrST6FMgoMBIMsHdGs1WpK07Rna2FZmH09qAb6JPgJvEXxV~tiS5cEhsFVNd5kgXKglXA26Hx3WRXSDVpmG2gcqJc516BBVNmIIxfQ-vnyInsMgpoaMoFARAzGKNGTx1DOyNm8ry78YhmE5X-odv5g8bHkC9qhNvBpONlI4~Xqd0K6krqjP5e908LSjrzokmeewLEGcQZJP~u-xbqVxCgIoD4lMnWze5E~VLYcVvAA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
      'name': 'Uber',
      'date': '24 Feb 2022',
      'amount': '+\$40.00',
      'color': Colors.greenAccent.shade700,
    },
    {
      'url':
          'https://cdn.discordapp.com/attachments/939350598388711455/944953704040247347/subway-logo-4.png',
      'name': 'Subway',
      'date': '24 Feb 2022',
      'amount': '-\$25.00',
      'color': Colors.redAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30.0, 20, 8),
                    child: Text(
                      "Siddharth Mishra",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0.0, 20, 20),
                    child: Text(
                      "Account: \$215,000",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.grey.shade400
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => GroupChatMessageScreen()),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(CupertinoIcons.group_solid),
                          Text("Support")
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Icon(CupertinoIcons.settings_solid),
                          Text("Settings")
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
          CarouselSlider(
            items: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Card(
                    "https://cdn.discordapp.com/attachments/939350598388711455/947390707855929354/Group_4C1_1.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Card(
                    'https://cdn.discordapp.com/attachments/939350598388711455/947390708195655680/Group_3C2_1.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Card(
                    "https://cdn.discordapp.com/attachments/939350598388711455/944692555944190073/Groupcard3_1.png"),
              )
            ],
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: false,
              initialPage: 0,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              viewportFraction: 0.82,
            ),
          ),
          Container(
            height:100,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => FinancePage()),
                  ),
                  child: Container(
                    
                   margin: EdgeInsets.symmetric(horizontal: 10),
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
                    height: 50,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(38, 144, 186, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.money_dollar_circle_fill,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "My Finance".toUpperCase(),
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AccountsPage()),
                  ),
                  child: Container(
                   margin: EdgeInsets.symmetric(horizontal: 10),
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
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
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
                          "My Accounts".toUpperCase(),
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700, fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => InsightsPage()),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
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
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(38, 144, 186, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.chart_bar_alt_fill,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "Insights".toUpperCase(),
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => LearnPage()),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
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
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(38, 144, 186, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.book_solid,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "Edify".toUpperCase(),
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10.0, 20, 20),
            child: Text(
              "Transactions",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 400,
              child: FadingEdgeScrollView.fromScrollView(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  controller: _controller,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return T_Tile(data[index]);
                  },
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }

  Widget Card(String url) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 184,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
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
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            url,
          ),
        ),
      ),
    );
  }

  Widget T_Tile(Map data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              offset: const Offset(
                0.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 0.5,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          // border: Border.all(
          //   color: Colors.black,
          // ),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(0),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
                image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  image: NetworkImage(
                    data['url'],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['name'],
                  style: GoogleFonts.inter(fontWeight: FontWeight.w700),
                ),
                Text(
                  data['date'],
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Colors.grey.shade400),
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            Text(
              data['amount'],
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  color: data['color']),
            ),
          ],
        ),
      ),
    );
  }
}
