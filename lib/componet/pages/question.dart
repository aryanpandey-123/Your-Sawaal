import 'package:flutter/material.dart';

class question extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Questions",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: size.width * 0.5,
                height: size.height * 0.04,
                decoration: BoxDecoration(
                  color: Color.fromARGB(76, 153, 153, 153),
                  borderRadius: BorderRadius.circular(20),
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
                          "Add comments",
                          "Share",
                          "Answer later",
                          "Notify me about edits",
                          "Downvote question",
                          "Viwe question details",
                          "Report"
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
                icon: Icon(Icons.more_horiz),
              )
            ],
          ),
        ],
      ),
    );
  }
}
