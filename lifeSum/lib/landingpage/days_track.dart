import 'package:flutter/material.dart';

class OwnList extends StatefulWidget {
  OwnList({super.key});

  @override
  State<OwnList> createState() => _OwnListState();
}

class _OwnListState extends State<OwnList> {
  List<Widget> icons = [];

  addIcon() {
    icons.insert(
      0,
      Icon(Icons.ad_units_rounded),
    );
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    icons = [
      GestureDetector(
          onTap: () {
            addIcon();
          },
          child: Icon(Icons.ad_units_rounded))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 8),
          child: Container(
            constraints: const BoxConstraints(minHeight: 100),
            color: Colors.white,
            child: Center(
              child: Wrap(
                children: icons,
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 8),
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text("1"),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 8),
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text("2"),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 8),
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text("3"),
            ),
          ),
        ),
      ]),
    );
  }
}
