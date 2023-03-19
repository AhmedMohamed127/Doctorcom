import 'package:flutter/material.dart';

class Searchmore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("search bar"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: Datasearch());
              })
        ],
      ),
    );
  }
}

class Datasearch extends SearchDelegate<String> {
  final x = [
    "book",
    "run",
    "bad",
    "sad",
    "mad",
    "good",
    "man",
    "green",
    "dad",
    "Hot",
    "Mam",
    "Waw"
  ];
  final y = [
    "book",
    "run",
    "bad",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 100,
          child: Card(
            color: Colors.green,
            child: Center(
              child: Text(query),
            ),
          )),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestion = query.isEmpty
        ? y
        : x
            .where((p) => p.toLowerCase().startsWith(query.toLowerCase()))
            .toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.timeline_sharp),
        title: RichText(
            text: TextSpan(
                text: suggestion[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggestion[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggestion.length,
    );
  }
}
