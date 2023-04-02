import 'package:flutter/material.dart';
import 'dart:math';

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

int itemCount = cz.length.toInt();

class listPage extends StatelessWidget {
  const listPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          //leading: Text('$index'),
          //contentPadding: EdgeInsets

          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(en[index - 1 + 1]),
                  ),
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(cz[index - 1 + 1]),
                  ),
                ],
              ),
            ],
          ), //  Text(cz[index-1+1])

          //trailing: const Icon(Icons.select_all_outlined),
          onTap: () {
            debugPrint('segdr');
          },
        );
      },
    );
  }
}
