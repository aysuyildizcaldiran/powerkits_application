import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'date.dart';
import 'login.dart';

class Ekle extends StatefulWidget {
  const Ekle({Key? key}) : super(key: key);

  @override
  State<Ekle> createState() => _EkleState();
}

class _EkleState extends State<Ekle> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    AnasayfaWidget(),
    VeliEkleWidget(title: 'Veli Kayıt'),
    VeliListe(),
    OgrenciEkle(),
    Date(),
    Login(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(LineIcons.home, color: Color.fromRGBO(118, 115, 114, 1)),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner_outlined, color: Color.fromRGBO(118, 115, 114, 1)),
            label: 'Rapor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box, color: Color.fromRGBO(118, 115, 114, 1)),
            label: 'Ekle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded, color: Color.fromRGBO(118, 115, 114, 1)),
            label: 'Mesaj',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.caretSquareRight, color: Color.fromRGBO(118, 115, 114, 1)),
            label: 'Onay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromRGBO(118, 115, 114, 1)),
            label: 'Sınıf Ekle',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

AppBar YoneticiAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    title: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(),
      child: Container(
        child: Text(
          'Ekle',
          style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black),
        ),
      ),
    ),
    actions: [
      Visibility(
        visible: false,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const VeliListe();
                },
                fullscreenDialog: true,
                settings: const RouteSettings()));
          },
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          child: const Icon(Icons.menu),
        ),
      ),
    ],
  );
}

class AnasayfaWidget extends StatefulWidget {
  const AnasayfaWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AnasayfaWidget> createState() => _AnasayfaWidgetState();
}

class _AnasayfaWidgetState extends State<AnasayfaWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                alignment: Alignment.center,
                height: 510,
                child: Image.asset(
                  'assets/png/bacground.png',
                ),
              ),
            ),
            const _CustomCard(),
          ],
        ),
      ],
    );
  }
}

class _CustomCard extends StatelessWidget with NavigatorManager {
  const _CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 110, left: 120),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 220,
              height: 40,
              child: ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Veli Ekle'),
                  onPressed: () {
                    navigateToWidget(context, const VeliEkleWidget(title: 'Veli Ekle'));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      primary: Colors.orange)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 220,
              height: 40,
              child: ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Öğrenci Ekle'),
                  onPressed: () {
                    navigateToWidget(context, const OgrenciEkle());
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      primary: Colors.red)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 220,
              height: 40,
              child: ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Öğretmen Ekle'),
                  onPressed: () {
                    navigateToWidget(context, const VeliEkleWidget(title: 'Öğretmen Ekle'));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 220,
              height: 40,
              child: ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Sınıf Ekle'),
                  onPressed: () {
                    navigateToWidget(context, const SinifEkle());
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      primary: Colors.green)),
            ),
          ),
        ],
      ),
    );
  }
}

class VeliEkleWidget extends StatefulWidget {
  const VeliEkleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  State<VeliEkleWidget> createState() => _VeliEkleWidgetState();
}

class _VeliEkleWidgetState extends State<VeliEkleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          title: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(),
            child: Container(
              child: Text(
                'Veli Ekle',
                style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black),
              ),
            ),
          ),
          actions: [
            Visibility(
              visible: true,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const VeliListe();
                      },
                    ),
                  );
                },
                child: const Icon(Icons.menu),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text('Veli Ekle', style: Theme.of(context).textTheme.headline6),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.name,
                  autofocus: true,
                  autofillHints: const [AutofillHints.namePrefix],
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hoverColor: Colors.purple,
                      hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                      hintText: 'İsim',
                      prefixIcon: const Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                    keyboardType: TextInputType.name,
                    autofocus: true,
                    autofillHints: const [AutofillHints.namePrefix],
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hoverColor: Colors.purple,
                        hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                        hintText: 'Soyisim',
                        prefixIcon: const Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: true,
                    autofillHints: const [AutofillHints.email],
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hoverColor: Colors.purple,
                        hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                        hintText: 'Email',
                        prefixIcon: const Icon(Icons.mail),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                    keyboardType: TextInputType.phone,
                    autofocus: true,
                    autofillHints: const [AutofillHints.telephoneNumber],
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hoverColor: Colors.purple,
                        hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                        hintText: 'Telefon',
                        prefixIcon: const Icon(Icons.phone),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
              ),
              Container(
                  padding: const EdgeInsets.all(15.0),
                  width: 200,
                  height: 70,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ))),
                      child: const Text('Kaydet'))),
            ],
          ),
        ));
  }
}

class VeliListe extends StatefulWidget {
  const VeliListe({Key? key}) : super(key: key);

  @override
  State<VeliListe> createState() => _VeliListeState();
}

class _VeliListeState extends State<VeliListe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YoneticiAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          child: ListView(
            children: [
              ListTile(
                title: const Text('Ali Demir '),
                trailing: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      primary: Colors.red),
                  child: const Text('Sil'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: Colors.black,
                  height: 30,
                ),
              ),
              ListTile(
                title: const Text('Mehmet Büyük'),
                trailing: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      primary: Colors.red),
                  child: const Text('Sil'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: Colors.black,
                  height: 30,
                ),
              ),
              ListTile(
                title: const Text('Mehmet Büyük'),
                trailing: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        primary: Colors.red),
                    child: const Text('Sil')),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: Colors.black,
                  height: 30,
                ),
              ),
              ListTile(
                title: const Text('Ali Demir '),
                trailing: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    primary: Colors.red,
                  ),
                  child: const Text('Sil'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: Colors.black,
                  height: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OgrenciEkle extends StatefulWidget {
  const OgrenciEkle({Key? key}) : super(key: key);

  @override
  State<OgrenciEkle> createState() => _OgrenciEkleState();
}

class _OgrenciEkleState extends State<OgrenciEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: YoneticiAppBar(context),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Öğrenci Ekle', style: Theme.of(context).textTheme.headline6),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.name,
                autofocus: true,
                autofillHints: const [AutofillHints.namePrefix],
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hoverColor: Colors.purple,
                    hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                    hintText: 'İsim',
                    prefixIcon: const Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                  keyboardType: TextInputType.name,
                  autofocus: true,
                  autofillHints: const [AutofillHints.namePrefix],
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hoverColor: Colors.purple,
                      hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                      hintText: 'Soyisim',
                      prefixIcon: const Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
            ),
            Container(
                padding: const EdgeInsets.all(15.0),
                width: 200,
                height: 70,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ))),
                    child: const Text('Kaydet'))),
          ]),
        ));
  }
}

class SinifEkle extends StatefulWidget {
  const SinifEkle({Key? key}) : super(key: key);

  @override
  State<SinifEkle> createState() => _SinifEkleState();
}

class _SinifEkleState extends State<SinifEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: YoneticiAppBar(context),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text('Öğrenci Ekle', style: Theme.of(context).textTheme.headline6),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.name,
                  autofocus: true,
                  autofillHints: const [AutofillHints.namePrefix],
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hoverColor: Colors.purple,
                      hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                      hintText: 'İsim',
                      prefixIcon: const Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(15.0),
                  width: 200,
                  height: 70,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ))),
                      child: const Text('Kaydet'))),
            ],
          ),
        ));
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings()));
  }
}
