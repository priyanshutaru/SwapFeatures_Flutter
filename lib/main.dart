import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ReelSkel(),
  ));
}
class ReelSkel extends StatefulWidget {
  const ReelSkel({Key? key}) : super(key: key);

  @override
  State<ReelSkel> createState() => _ReelSkelState();
}

class _ReelSkelState extends State<ReelSkel> {
  @override
  Widget build(BuildContext context) {
    PageController controller= PageController(initialPage: 0);
    List<Widget> reel=[
      Container(
        height:MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        color: Colors.amberAccent,
      ),
      Container(
        height:MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        color: Colors.cyan,
      ),
      Container(
        height:MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
      ),
      Container(
        height:MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        color: Colors.orangeAccent,
      ),
      Container(
        height:MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        color: Colors.purpleAccent,
      ),
      Container(
        height:MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        color: Colors.tealAccent,
      )

    ];

    return Scaffold(
      body: Container(
        child: PageView(
          controller: controller,
          scrollDirection: Axis.vertical,
          children:reel,

        ),
      ),
    );
  }
}


