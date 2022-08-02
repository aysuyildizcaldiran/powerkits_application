import 'package:flutter/material.dart';

class Date extends StatefulWidget {
  const Date({Key? key}) : super(key: key);

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.chevron_left),
                Text('May 2022'),
                Icon(Icons.chevron_right),
              ],
            ),
            Container(
                color: Colors.green,
                child: SizedBox(
                  height: 50,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Container(
                        width: 90,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: const <Widget>[Text('16'), Text('Paz')],
                        ),
                      ),
                      Container(
                        width: 80,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: const <Widget>[Text('17'), Text('Sal')],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        width: 80,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: const <Widget>[Text('18'), Text('Çar')],
                        ),
                      ),
                      Container(
                        width: 80,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: const <Widget>[Text('19'), Text('Per')],
                        ),
                      ),
                      Container(
                        width: 80,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: const <Widget>[Text('20'), Text('Cum')],
                        ),
                      ),
                      Container(
                        width: 90,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: const <Widget>[Text('21'), Text('Cmt')],
                        ),
                      ),
                      Container(
                        width: 90,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: const <Widget>[Text('22'), Text('Paz')],
                        ),
                      ),
                    ]),
                  ),
                )),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Image.asset('assets/png/aktivitebacground.png')),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: ElevatedButton(
                                style:
                                    ElevatedButton.styleFrom(primary: Colors.green, textStyle: TextStyle(fontSize: 15)),
                                onPressed: () {},
                                child: Text('Onayla')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: ElevatedButton(
                                style:
                                    ElevatedButton.styleFrom(primary: Colors.red, textStyle: TextStyle(fontSize: 15)),
                                onPressed: () {},
                                child: Text(
                                  'Sil',
                                  style: Theme.of(context).textTheme.subtitle1,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, top: 20),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.orange),
                      height: 45,
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.only(right: 25), child: Text('14:35:00')),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Minikler sınıfı bedensel aktivite çalışmaları',
                              maxLines: 3,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Image.asset('assets/png/aktivitebacground.png')),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: ElevatedButton(
                                style:
                                    ElevatedButton.styleFrom(primary: Colors.green, textStyle: TextStyle(fontSize: 15)),
                                onPressed: () {},
                                child: Text('Onayla')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: ElevatedButton(
                                style:
                                    ElevatedButton.styleFrom(primary: Colors.red, textStyle: TextStyle(fontSize: 15)),
                                onPressed: () {},
                                child: Text(
                                  'Sil',
                                  style: Theme.of(context).textTheme.subtitle1,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, top: 20),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.orange),
                      height: 45,
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.only(right: 25), child: Text('14:35:00')),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Minikler sınıfı bedensel aktivite çalışmaları',
                              maxLines: 3,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset('assets/png/aktivitebacground.png'),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: ElevatedButton(
                                style:
                                    ElevatedButton.styleFrom(primary: Colors.green, textStyle: TextStyle(fontSize: 15)),
                                onPressed: () {},
                                child: Text('Onayla')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: ElevatedButton(
                                style:
                                    ElevatedButton.styleFrom(primary: Colors.red, textStyle: TextStyle(fontSize: 15)),
                                onPressed: () {},
                                child: Text(
                                  'Sil',
                                  style: Theme.of(context).textTheme.subtitle1,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, top: 20),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.orange),
                      height: 45,
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.only(right: 25), child: Text('14:35:00')),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Minikler sınıfı bedensel aktivite çalışmaları',
                              maxLines: 3,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
