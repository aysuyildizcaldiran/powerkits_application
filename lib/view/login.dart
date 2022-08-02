import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(children: [
            lngContainer(),
            lngSelection(),
            greenBulut(),
            yildizContainer(),
            birdContainer(),
            logo(),
          ]),
          girisView(context),
          const footorWidget(),
        ],
      ),
    );
  }

  Padding logo() {
    return Padding(
      padding: const EdgeInsets.only(right: 74, left: 74),
      child: Container(
        child: Image.asset(
          'assets/png/logo1.png',
        ),
      ),
    );
  }

  Container girisView(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 93, left: 94),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: TextField(
              keyboardType: TextInputType.phone,
              autofocus: true,
              autofillHints: const [AutofillHints.telephoneNumberLocalPrefix],
              textInputAction: TextInputAction.next,
              decoration: _InputDecarotor().telephoneInput,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              autofocus: true,
              autofillHints: const [AutofillHints.password],
              textInputAction: TextInputAction.next,
              decoration: _InputDecarotor().passwordInput,
            ),
          ),
          girisButton(context),
          InkWell(onTap: () {}, child: const Text('Şifremi Unuttum?')),
        ],
      ),
    );
  }

  Container girisButton(BuildContext context) {
    return Container(
      width: 250,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ))),
        onPressed: () {},
        child: Text('GİRİŞ', style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.white)),
      ),
    );
  }

  Padding birdContainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 300),
      child: Container(
          child: SizedBox(
        child: Image.asset('assets/png/katman3(1).png'),
      )),
    );
  }

  Padding greenBulut() {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(child: SizedBox(child: Image.asset('assets/png/katman3.png'))),
    );
  }

  Padding lngSelection() {
    return Padding(
      padding: const EdgeInsets.only(left: 450),
      child: InkWell(
        onTap: () {},
        child: Text(TextItem().language),
      ),
    );
  }

  Padding yildizContainer() {
    return Padding(
      padding: const EdgeInsets.only(right: 250),
      child: Container(
          child: SizedBox(
        child: Image.asset('assets/png/OBJECTS.png'),
      )),
    );
  }

  Padding lngContainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 450),
      child: Container(
        child: Image.asset('assets/png/Vector.png'),
      ),
    );
  }
}

class footorWidget extends StatelessWidget {
  const footorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 300),
                child: Container(child: SizedBox(child: Image.asset('assets/png/bulut-t.png'))),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(child: SizedBox(child: Image.asset('assets/png/bulut-m.png'))),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 50),
                child: Container(child: SizedBox(child: Image.asset('assets/png/kare.png'))),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Container(child: SizedBox(child: Image.asset('assets/png/erkek.png'))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(child: SizedBox(child: Image.asset('assets/png/kurdele.png'))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(child: SizedBox(child: Image.asset('assets/png/kiz.png'))),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TextItem {
  String language = "Diller";
  String giris = "Giriş";
}

class _InputDecarotor {
  final telephoneInput = InputDecoration(
      hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
      hintText: 'Telefon Numarası',
      prefixIcon: const Icon(Icons.phone),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)));

  final passwordInput = InputDecoration(
    hintText: 'Şifre',
    hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
    prefixIcon: const Icon(Icons.password),
    suffixIcon: const Icon(Icons.visibility),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
}
