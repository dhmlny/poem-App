// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Poem(),
    );
  }
}

class Poem extends StatefulWidget {
  const Poem({super.key});

  @override
  State<Poem> createState() => _PoemState();
}

class _PoemState extends State<Poem> {
  //dart code
  List verse = [
    {
      "line1": "لا تَشْكُ للناس جُرْحًَا أَنْتَ صَاحِبُهُ",
      "line2": "لا يُؤْلِمُ الجَرْحُ إلا مَن بِهِ ألَمُ",
    },
    {
      "line1": "شَكْوَاكَ لِلنَّاسِ يا ابنَ النَّاس منْقصَةٌ",
      "line2": "ومَن مِنَ النَّاسِ صَاحِ مَا بِهِ سَقَمُ",
    },
    {
      "line1": "فالهمُّ كالسّيْلِ والأحزان زاخِرَةٌ",
      "line2": "حُمْرُ الدَّلائلِ مَهْمَا أهْلُها كَتمُوا",
    },
    {
      "line1": "فَإِنْ شَكَوْتَ لِمَنْ طَابَ الزَّمَانُ لَهُ",
      "line2": "عَيْنَاكَ تَغْلِي وَمَنْ تَشْكُو لَهُ صَنَمُ",
    },
    {
      "line1": "وَإِذَا شَكَوْتَ لِمَنْ شَكْوَاكَ تُسْعِدُهُ",
      "line2": "ضَفْتَ جُرْحًا لِجُرْحِكَ اِسْمُهُ النَّدَمُ",
    },
    {
      "line1": "هَلِ الْمُوَاسَاةُ يَوْمًا حرَّرَتْ وَطَنا",
      "line2": "أم التّعازي بَدِيلٌ إنْ هَوَى العَلَمُ",
    },
    {
      "line1": "مَنْ يُنْدبُ الْحَظَّ يُطْفِئُ عَيْنَ هِمّتِهِ",
      "line2": "َا عِينَ لِلَحْظِ إنْ لَمْ تُبصرِ الْهِمَمُ",
    },
    {
      "line1": "كَمْ خَابَ ظَنّي بِمنِ أهديته ثِقتَي",
      "line2": "فَأَجْبَرَتْنِي عَلَى هِجْرَانِهِ التُّهَمُ",
    },
    {
      "line1": "كَمْ صُرْتُ جِسْرًا لمَن أحببتهُ فَمَشَى",
      "line2": "عَلَى ضُلُوعِي وَكَمْ زَلَّت بِهِ قَدَمُ",
    },
    {
      "line1": "فَدَاسَ قَلْبي وَكَانَ القَلْبُ مَنْزِلهُ",
      "line2": "فَمَا وَفَائِي لخِلٍّ مَالَهُ قَيمُ",
    },
    {
      "line1": "لَا الْيَأسُ ثَوْبي وَلَا الأحزان تَكْسِرُني",
      "line2": "جُرْحَي عَنِيدٌ بلَسْعِ النَّارِ يَلْتَئِمُ",
    },
    {
      "line1": "اِشرب دمُوعك واجْرع مُرَّهَا عَسَلًا",
      "line2": "يغزو الشُّموعَ حَريقٌ وهِيَ تَبتَسِمُ",
    },
    {
      "line1": "والْجِم هُموْمَكَ واسْرِج ظَهْرَها فَرَسًَا",
      "line2": "وانهض كسيْفٍ إذا الأنصالُ تَلْتَحِمُ",
    },
    {
      "line1": "فالْخَيْرُ حَملٌ ودِيعٌ خَائِفٌ قَلقٌ",
      "line2": "وَالشَّرُّ ذِئْبٌ خَبِيثٌ مَاكِرٌ نَهِمُ",
    },
    {
      "line1": "كُنْ ذَا دَهَاءِ وَكُنِ لِصًّا بِغَيْرِ يَدٍ",
      "line2": "تَرَى الْمَلَذَّاتِ تحتَ يَدِيكَ تَزْدَحِمُ",
    },
    {
      "line1": "فالْمَالُ وَالْجَاهُ تِمْثَالَانِ مِنْ ذَهبٍ",
      "line2": "لَهُمَا تُصلِي بِكُلِّ لُغاتِهَا الأُممُ",
    },
    {
      "line1": "شَكَوَاكَ شَكْوَايَ يَا مِن تَكْتَوِي ألْمًَا",
      "line2": "ما سال دَمْعٌ عَلَى الْخَدَّيْنِ سَالَ دَمُ",
    },
    {
      "line1": "وَمِنْ سِوَى اللهِ نَأْوِي تَحْتَ سِدْرَتِهِ",
      "line2": "َنَسْتَغِيثُ بِهِ عَوِّنَا وَنَعْتَصِمُ",
    },
    {
      "line1": "كُن فَيْلَسُوفًَا ترى أنَّ الجميعَ هُنَا",
      "line2": "يتقاتلون على عَدَمٍ وهُم عَدَمُ",
    },
  ];
  int index = 0;
  int counter = 1;

   changeIndex(String dirction) {
    if (dirction == "right") {
      setState(() {
        if (index == verse.length - 1) {
          index = verse.length - 1;
          counter = verse.length;
        } else {
          index++;
          counter++;
        }
      });
    } else if (dirction == "left") {
      setState(() {
        if (index == 0) {
          index = 0;
          counter = 1;
        } else {
          index--;
          counter--;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "الشاعر : كريم العراقي",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              verse[index]["line1"],
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              verse[index]["line2"],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    changeIndex("left");
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.arrow_left,
                    size: 55,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  onPressed: () {
                      changeIndex("right");
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.arrow_right,
                    size: 55,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "رقم البيت : $counter ",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
