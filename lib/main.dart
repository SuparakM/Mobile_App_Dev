import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const FunnyQuotesApp());
}

class FunnyQuotesApp extends StatelessWidget {
  const FunnyQuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<String> quoteList = [
    'เวลาที่ดีที่สุด คือ เวลามีเงิน',
    'เงินทองเป็นของนอกกาย ไม่ตายก็หาเกือบตายอยู่ดี',
    'ถึงเรื่องการเงินจะติดดิน แต่เรื่องการกินเราติดดาว',
    'ในวันที่ต้องเจออะไรหนักๆ อย่างน้อย กระเป๋าตังค์ก็เบา',
    'ฤกษ์ที่ดี คือ เลิกงานกลับบ้านได้',
    'อยู่ด้วยกันจนถึงสิ้นปีเลยได้ไหม เงินอะ',
  ];

  static List<Color> colorsList = [
    Colors.redAccent,
    Colors.greenAccent,
    Colors.deepPurpleAccent,
    Colors.blueAccent,
  ];

  var quote = quoteList[0];

  var randomcolor = colorsList[0];

  void handleClickGO() {
    setState(() {
      var rand = Random();
      var randomIndex = rand.nextInt(quoteList.length);
      quote = quoteList[randomIndex];
      randomcolor = colorsList[rand.nextInt(colorsList.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('คำคมกวนๆ'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: handleClickGO,
        child: const Text('GO'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            quote,
            style: TextStyle(
              color: randomcolor,
              fontSize: 40,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
