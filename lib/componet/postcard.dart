import 'package:YourSawaal/screens/profileview.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class postcard extends StatefulWidget {
  const postcard({super.key});

  @override
  postcardstate createState() => postcardstate();
}

class postcardstate extends State<postcard> {
  bool press = false;
  bool undo = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Material(
                    child: Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          constraints: BoxConstraints(),
                          padding: EdgeInsets.zero,
                          icon: Image.asset("images/user.png"),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profileview()));
                          },
                        ))),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profileview()));
                          },
                          child: Text("Username ·",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                        TextButton(
                            child: undo
                                ? Text("following",
                                    style: TextStyle(color: Colors.red))
                                : Text("follow",
                                    style: TextStyle(color: Colors.red)),
                            onPressed: () {
                              setState(() {
                                press = !press;
                                undo = !undo;
                              });
                            }),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        child: ListView(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shrinkWrap: true,
                          children: [
                            "Bookmark",
                            "Translate",
                            "Log",
                            "Report",
                          ]
                              .map(
                                (e) => InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 16),
                                    child: Text(e),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    );
                  },
                  icon: Icon(Icons.more_vert),
                )
              ],
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              child: Image.asset(
                'images/back.jpg',
                fit: BoxFit.cover,
              )),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              likebutton(),
              SizedBox(
                width: 5,
              ),
              unlikebutton(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.repeat_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.mode_comment_outlined),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share_outlined),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}

class likebutton extends StatefulWidget {
  @override
  likebuttonstate createState() => likebuttonstate();
}

class likebuttonstate extends State<likebutton> {
  bool isliked = false;
  int likecount = 0;
  @override
  Widget build(BuildContext context) {
    final double size = 24;
    return LikeButton(
      size: size,
      isLiked: isliked,
      likeCount: likecount,
      likeBuilder: (isliked) {
        final color = isliked ? Colors.blue : Colors.grey;
        return Icon(Icons.arrow_circle_up_rounded,
            color: Colors.blue, size: size);
      },
      likeCountPadding: EdgeInsets.only(left: 10),
      countBuilder: (count, isliked, text) {
        final color = isliked ? Colors.black : Colors.grey;
        return Text(
          text,
          style: TextStyle(
              color: color, fontSize: 15, fontWeight: FontWeight.bold),
        );
      },
      onTap: (isliked) async {
        this.isliked = !isliked;
        likecount += this.isliked ? 1 : -1;
        return !isliked;
      },
    );
  }
}

class unlikebutton extends StatefulWidget {
  @override
  unlikebuttonstate createState() => unlikebuttonstate();
}

class unlikebuttonstate extends State<unlikebutton> {
  bool isunliked = false;
  int unlikecount = 0;
  @override
  Widget build(BuildContext context) {
    final double size = 24;
    return LikeButton(
      size: size,
      isLiked: isunliked,
      likeCount: unlikecount,
      likeBuilder: (isliked) {
        final color = isliked ? Colors.red : Colors.grey;
        return Icon(Icons.arrow_circle_down_rounded,
            color: Colors.red, size: size);
      },
      likeCountPadding: EdgeInsets.only(left: 10),
      countBuilder: (count, isliked, text) {
        final color = isliked ? Colors.black : Colors.grey;
        return Text(
          text,
          style: TextStyle(
              color: color, fontSize: 15, fontWeight: FontWeight.bold),
        );
      },
      onTap: (isliked) async {
        this.isunliked = !isliked;
        unlikecount += this.isunliked ? 1 : -1;
        return !isliked;
      },
    );
  }
}
