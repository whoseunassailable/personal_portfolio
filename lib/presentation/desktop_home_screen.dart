import 'package:flutter/material.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Container(
          //   height: height / 10,
          //   width: height / 10,
          //   alignment: Alignment.topRight,
          //   decoration: const BoxDecoration(color: Colors.greenAccent),
          //   child: Text('${height.toString()} \n \n  ${width.toString()}'),
          // ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ],
      ),
    );
  }
}
