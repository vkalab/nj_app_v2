import 'package:flutter/material.dart';
import 'dart:math';
//import 'globals.dart' as globals;

bool state = false;
var en = [
  "die Fotomontage, -n",
  "das Hilfsmittel, –",
  "die Kampagne, -n",
  "das Styling, -s",
  "wirken",
  "die Ausgabe, -n",
  "die Ausschreibung, -n",
  "der Aspekt, -e",
  "die Klamotten (Pl.)",
  "der Laufsteg, -e",
  "der Makel, –",
  "das Model, -s",
  "der Wettbewerb, -e",
  "sich beschränken auf (+ Akk.)",
  "durchblättern",
  "irritieren",
  "sein lassen, ließ sein, hat sein gelassen",
  "staunen über (+ Akk.)",
  "stylen",
  "vorführen",
  "vorschreiben, schrieb vor, hat vorgeschrieben",
  "verzichten auf (Akk.)",
  "zustimmen",
  "attraktiv",
  "selbstbewusst",
  "vielseitig",
  "die Entdeckung, -en",
  "die Mentalität, -en",
  "das Schönheitsideal, -e",
  "betreffen, betraf, hat betroffen",
  "entdeckt werden",
  "neidisch sein",
  "riskant sein",
  "stammen aus",
  "souverän",
  "die Augenbraue, -en",
  "die Äußerlichkeit, -n",
  "die Garderobe, -n",
  "die Körperbehaarung (Sg.)",
  "die Kosmetikerin, -nen",
  "die Wimper, -n",
  "abraten, riet ab, hat abgeraten",
  "sich engagieren für (+ Akk.)",
  "färben",
  "lackieren",
  "plädieren für (+ Akk.)",
  "übertreiben, übertrieb, hat übertrieben",
  "effektiv"
];
var cz = [
"Fotomontáž",
"Pomůcka",
"Kampaň",
"Styling",
"Působit",
"Vydání",
"Výběrové řízení",
"Aspekt",
"Oblečení",
"Vyhlídkové molo",
"Vada",
"Modelka",
"Soutěž",
"Omezit se na (něco)",
"Listovat",
"Dráždit",
"Nechat být",
"Divit se (něčemu)",
"Stylizovat",
"Předvádět",
"Předepsat",
"Vzdát se (něčeho)",
"Souhlasit",
"Atraktivní",
"Sebevědomý",
"Všestranný",
"Objev",
"Mentalita",
"Ideál krásy",
"Týkat se (něčeho)",
"Být objeven",
"Závidět",
"Být riskantní",
"Pocházet z",
"Suverénní",
"Obočí",
"Vzhled",
"Šatník",
"Ochlupení těla",
"Kosmetička",
"Řasa",
"Odradit",
"Angažovat se pro (něco)",
"Barvit",
"Lakovat",
"Prosazovat (něco)",
"Přehánět",
"Efektivní"
];


var slovo1 = '';
var slovo2 = '';

var cislo;

var slovo_1;
var slovo_2;

var c;

String a = '';
String b = '';

void next() {
  //debugPrint('next word');
  state = !state; // true obě slova, false jenom horní
  //counter++;
  //debugPrint('$counter');
  //debugPrint('$state');

  if (state == true) {
    cislo = new Random();
    c = cislo.nextInt(cz.length.toInt());
    slovo1 = cz[c];
    slovo2 = en[c];
    slovo_2 = slovo2;
    slovo2 = '';

    //slovo_1 = slovo1;
    //slovo_2 = slovo2;

    cz.removeAt(c);
    en.removeAt(c);
  } else {
    //slovo2 = en[c];
    //slovo1;
    slovo2 = slovo_2;
  }

  if (cz.isEmpty) {
    debugPrint('prazdno');
    en = [
        "die Fotomontage, -n",
        "das Hilfsmittel, –",
        "die Kampagne, -n",
        "das Styling, -s",
        "wirken",
        "die Ausgabe, -n",
        "die Ausschreibung, -n",
        "der Aspekt, -e",
        "die Klamotten (Pl.)",
        "der Laufsteg, -e",
        "der Makel, –",
        "das Model, -s",
        "der Wettbewerb, -e",
        "sich beschränken auf (+ Akk.)",
        "durchblättern",
        "irritieren",
        "sein lassen, ließ sein, hat sein gelassen",
        "staunen über (+ Akk.)",
        "stylen",
        "vorführen",
        "vorschreiben, schrieb vor, hat vorgeschrieben",
        "verzichten auf (Akk.)",
        "zustimmen",
        "attraktiv",
        "selbstbewusst",
        "vielseitig",
        "die Entdeckung, -en",
        "die Mentalität, -en",
        "das Schönheitsideal, -e",
        "betreffen, betraf, hat betroffen",
        "entdeckt werden",
        "neidisch sein",
        "riskant sein",
        "stammen aus",
        "souverän",
        "die Augenbraue, -en",
        "die Äußerlichkeit, -n",
        "die Garderobe, -n",
        "die Körperbehaarung (Sg.)",
        "die Kosmetikerin, -nen",
        "die Wimper, -n",
        "abraten, riet ab, hat abgeraten",
        "sich engagieren für (+ Akk.)",
        "färben",
        "lackieren",
        "plädieren für (+ Akk.)",
        "übertreiben, übertrieb, hat übertrieben",
        "effektiv"
    ];
    cz = [
      "Fotomontáž",
      "Pomůcka",
      "Kampaň",
      "Styling",
      "Působit",
      "Vydání",
      "Výběrové řízení",
      "Aspekt",
      "Oblečení",
      "Vyhlídkové molo",
      "Vada",
      "Modelka",
      "Soutěž",
      "Omezit se na (něco)",
      "Listovat",
      "Dráždit",
      "Nechat být",
      "Divit se (něčemu)",
      "Stylizovat",
      "Předvádět",
      "Předepsat",
      "Vzdát se (něčeho)",
      "Souhlasit",
      "Atraktivní",
      "Sebevědomý",
      "Všestranný",
      "Objev",
      "Mentalita",
      "Ideál krásy",
      "Týkat se (něčeho)",
      "Být objeven",
      "Závidět",
      "Být riskantní",
      "Pocházet z",
      "Suverénní",
      "Obočí",
      "Vzhled",
      "Šatník",
      "Ochlupení těla",
      "Kosmetička",
      "Řasa",
      "Odradit",
      "Angažovat se pro (něco)",
      "Barvit",
      "Lakovat",
      "Prosazovat (něco)",
      "Přehánět",
      "Efektivní"
    ];
  }
}

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'CZ Slovo:',
              style: TextStyle(fontSize: 24, color: Colors.grey),
            ),
            SizedBox(
              width: 275,
              child: Text(
                '$slovo1',
                style: TextStyle(fontSize: 30, ),
              ),
            ),
            const Text(
              'NJ Slovo:',
              style: TextStyle(fontSize: 24, color: Colors.grey),
            ),
            SizedBox(
              width: 275,
              child: Text(
                '$slovo2',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(width: 20, height: 50),
            const SizedBox(width: 35, height: 50),
            SizedBox(
              height: 100,
              width: 100,
              child: FittedBox(
                child: FloatingActionButton(
                  onPressed: () {
                    next();

                    setState(() {});
                  },
                  tooltip: 'Next >',
                  splashColor: Colors.green[400],
                  hoverColor: Colors.green[400],
                  child: const Icon(Icons.navigate_next),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
