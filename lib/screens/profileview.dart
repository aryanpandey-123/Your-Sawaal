import 'package:YourSawaal/componet/askquestion.dart';
import 'package:YourSawaal/componet/create.dart';
import 'package:flutter/material.dart';

class Profileview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 48,
                            backgroundImage: AssetImage('images/user.png'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'User Name',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Color(0xff035AA6),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(children: [
                                  Text('Sub Content'),
                                  SizedBox(
                                    width: size.width * 0.08,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) => Dialog(
                                            child: ListView(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 16),
                                              shrinkWrap: true,
                                              children: [
                                                "Share",
                                                "Invite",
                                                "Edit your credential",
                                                "Unfollow",
                                                "Mute",
                                                "Report",
                                              ]
                                                  .map(
                                                    (e) => InkWell(
                                                      onTap: () {},
                                                      child: Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 12,
                                                                horizontal: 16),
                                                        child: Text(e),
                                                      ),
                                                    ),
                                                  )
                                                  .toList(),
                                            ),
                                          ),
                                        );
                                      },
                                      icon: Icon(Icons.more_horiz)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.notifications_active)),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => create(
                                                      child: askquestionpage(),
                                                    )));
                                      },
                                      icon: Icon(Icons.quiz_outlined))
                                ]),
                                SizedBox(
                                  height: 20,
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  color: Color(0xff035AA6),
                                  minWidth: double.infinity,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 16,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    'FOLLOW',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                '00',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xff035AA6),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Posts',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '00',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xff035AA6),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Followers',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '00',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xff035AA6),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Following',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          Divider(
                            height: MediaQuery.of(context).size.height * 0.01,
                            thickness: 5,
                            color: Color.fromARGB(96, 158, 158, 158),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Text(
                                  "Credentials & Highlights",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 80),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.edit_note_outlined,
                                      size: 35,
                                    )),
                              )
                            ],
                          ),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.card_travel_rounded,
                                color: Colors.black,
                              ),
                              label: Text(
                                "Working on my credentials",
                                style: TextStyle(color: Colors.black),
                              )),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.black,
                              ),
                              label: Text(
                                "Views on content",
                                style: TextStyle(color: Colors.black),
                              )),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.date_range_outlined,
                                color: Colors.black,
                              ),
                              label: Text(
                                "Joined On date",
                                style: TextStyle(color: Colors.black),
                              )),
                          Divider(
                            height: MediaQuery.of(context).size.height * 0.01,
                            thickness: 5,
                            color: Color.fromARGB(96, 158, 158, 158),
                          ),
                        ],
                      ),
                      DefaultTabController(
                          length: 8,
                          child: Column(children: [
                            TabBar(isScrollable: true, tabs: [
                              Tab(
                                child: Text(
                                  "Profile",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Posts",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Questions",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Answers",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Followers",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Following",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Spaces",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Activity",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ]))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
