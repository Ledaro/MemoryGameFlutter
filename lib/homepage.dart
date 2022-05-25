import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: _list[index].secondaryColor,
                      borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.black45,
                      spreadRadius: 0.5,
                      offset: Offset(3,4))
                  ]),
                ),
            Container(
              height: 90,
              width: double.infinity,
                decoration: BoxDecoration(
                    color: _list[index].primaryColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Colors.black12,
                        spreadRadius: 0.3,
                        offset: Offset(
                          5,
                          3,
                    ))
                  ]),
              child: Column(
                children: [
                  Center(
                    child: Text(_list[index].name,
                        style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black26,
                        blurRadius: 2,
                        offset: Offset(1, 2), ),
                      Shadow(
                        color: Colors.green,
                        blurRadius: 2,
                        offset: Offset(0.5, 2))
                      ])
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: generateStar(_list[index].noOfstar),
                  )
                ],
              )
            ),
              ],
            ),
          );
        },
        ),
      ),
    );
  }
  List<Widget> generateStar(int no) {
    List<Widget> _icons = [];
    for (int i=0; i <no; i++ ){
      _icons.insert(
          i,
          const Icon(
            Icons.star,
            color:Colors.yellow,
      ));
    }
    return _icons;
  }
}

class Details{
  late String name;
  late Color primaryColor;
  late Color? secondaryColor;
  late Widget goto;
  late int noOfstar;
  Details({required this.name, required this.primaryColor, required this.secondaryColor, required this.noOfstar});
}

List<Details> _list = [
  Details(
      name: "EASY",
      primaryColor: Colors.green,
      secondaryColor: Colors.green[200],
      noOfstar: 1
  ),
  Details(
      name: "MEDIUM",
      primaryColor: Colors.orange,
      secondaryColor: Colors.orange[200],
      noOfstar: 2,
  ),
  Details(
      name: "HARD",
      primaryColor: Colors.red,
      secondaryColor: Colors.red[200],
      noOfstar: 3
  ),
];