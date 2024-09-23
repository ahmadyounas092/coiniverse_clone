import 'package:flutter/material.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, int index){
          return Container(
            height: 200,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.orange
            ),
          );
          }
      ),
    );
  }
}
