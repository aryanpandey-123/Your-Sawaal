import 'package:flutter/material.dart';

class search extends SearchDelegate<String> {
  final searches = [
    "Space-1",
    "Space-2",
    "Space-3",
    "Space-4",
    "Space-5",
    "Space-6",
    "Space-7",
    "Space-8",
    "Space-9",
    "Space-10",
    "Space-11",
    "Space-12",
    "Space-13",
    "Space-14",
    "Space-15",
    "Space-16",
    "Space-17",
    "Space-18",
    "Space-19",
    "Space-20",
  ];

  final recentsearches = ["Space-14", "Space-15", "Space-16", "Space-17"];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, "null");
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentsearches
        : searches.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (content, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.query_stats),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggestionList.length,
    );
  }
}
