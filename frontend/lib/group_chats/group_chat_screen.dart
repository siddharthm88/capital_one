import 'package:google_fonts/google_fonts.dart';
import 'package:capital_one/group_chats/create_group/add_members.dart';
import 'package:capital_one/group_chats/group_chat_room.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GroupChatMessageScreen extends StatefulWidget {
  const GroupChatMessageScreen({Key? key}) : super(key: key);

  @override
  _GroupChatMessageScreenState createState() => _GroupChatMessageScreenState();
}

class _GroupChatMessageScreenState extends State<GroupChatMessageScreen> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isLoading = true;

  List groupList = [];

  @override
  void initState() {
    super.initState();
    getAvailableGroups();
  }

  void getAvailableGroups() async {
    String uid = _auth.currentUser!.uid;

    await _firestore
        .collection('users')
        .doc(uid)
        .collection('groups')
        .get()
        .then((value) {
      setState(() {
        groupList = value.docs;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.white12,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            
            Text(
              "Customer Support",
              style: GoogleFonts.poppins(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            
          ],
        ),
      ),
      body: SafeArea(
        child: isLoading
            ? Container(
                height: size.height,
                width: size.width,
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: groupList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => GroupChatRoom(
                          groupName: groupList[index]['name'],
                          groupChatId: groupList[index]['id'],
                        ),
                      ),
                    ),
                    leading: Icon(Icons.group),
                    title: Text(groupList[index]['name']),
                  );
                },
              ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.create),
      //   onPressed: () => Navigator.of(context).push(
      //     MaterialPageRoute(
      //       builder: (_) => AddMembersInGroup(),
      //     ),
      //   ),
      //   tooltip: "Create Group",
      // ),
    );
  }
}
