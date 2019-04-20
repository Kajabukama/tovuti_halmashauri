import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  
  final cities = [
    'Arusha',
    'Dar es salaam', 
    'Dodoma',
    'Mtwara', 
    'Kilimanjaro',
    'Kigoma'
  ];

  final recent = [
    'Mtwara',
    'Dar es salaam'
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty 
    ? recent 
    : cities.where((p) => p.contains(query)).toList();
    return Container(
      color: Colors.white,
      child: ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.location_city),
        title: Text(suggestions[index]),
      )
    )
    );
  }

}