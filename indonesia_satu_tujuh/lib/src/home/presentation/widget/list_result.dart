import 'package:flutter/material.dart';

class ListResult extends StatelessWidget {
  const ListResult({Key? key, required this.list}) : super(key: key);

  final List<dynamic> list;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Scrollbar(
      interactive: true,
      thumbVisibility: true,
      trackVisibility: true,
      radius: Radius.circular(10),
      thickness: 5,
      child: ListView(
        children: [
          Wrap(
            children: List.generate(list.length, (index) {
              return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(list[index].toString()));
            }),
          )
        ],
      ),
    ));
  }
}
