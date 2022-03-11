import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const FortuneTeller());
}

class FortuneTeller extends StatelessWidget {
  const FortuneTeller({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[800],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple[500],
          title: const Text(
            'Fortune Teller',
            style: TextStyle(
              fontFamily: 'Italianno',
              fontSize: 58,
            ),
          ),
        ),
        body: const SafeArea(
          child: FortunePage(),
        ),
      ),
    );
  }
}

class FortunePage extends StatefulWidget {
  const FortunePage({Key? key}) : super(key: key);

  @override
  State<FortunePage> createState() => _FortunePageState();
}

class _FortunePageState extends State<FortunePage> {
  int wish = 0;
  List<String> fortunes = [
    'Click for Fortune Telling',
    'LOVE: You should take care of your love and relationship today.',
    'LOVE: You may want to take control of your love and relationship life and direct your togetherness as you wish.',
    'LOVE: You may find that your emotions are a little erratic today. Start your day as you have never done before.',
    'LOVE: Your emotions often dominate your rational thinking, and a deep, emotional turmoil ensues.',
    'LOVE: Do not feel bad emotionally, your intuition is strong. Try to understand your lovers feelings with these intuitions.',
    'MONEY: There are some expenses that you have put on your mind for a long time, today ask yourself how much you need them and cancel some of them.',
    'MONEY: We are entering periods that can disrupt the balance of your cash flow, these days you should sit at the desk and make a budget calculation.',
    'MONEY: Today may be a day when your sense of help, support, and service to others is high, and you can take part in charitable works.',
    'MONEY: Your self-confidence is quite high today, but it may not do you much good. Act calmly, take a step back, and be more concerned with your health than money.',
    'MONEY: You should pay attention to the details of our financial resources this period. You may also decide on a matter that has occupied you for a long time in financial matters and expenses.',
    'ADVICE: Do not hesitate to ask people questions by highlighting your curious personality today.',
    'ADVICE: Today you may realize that things you never noticed before are always there, just try to be a little more careful.',
    'ADVICE: You can try to be more active and giving in your bilateral relations today, start to listen more carefully, and question the people you agree with.',
    'ADVICE: Just focus on your work today, getting away from all kinds of distractions and social media can make you feel happier.',
    'ADVICE: Take a walk alone today, turn on the songs you listened to as a child, and imagine the games you played back then.',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 150.0,
            margin: EdgeInsets.only(
              bottom: 10,
            ),
            child: Image(
              image: AssetImage(
                'assets/images/falci.png',
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 45.0,
              vertical: 5.0,
            ),
            color: Colors.white,
            child: ListTile(
              onTap: () {
                setState(() {
                  wish = Random().nextInt(5) + 1;
                });
              },
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 35.0,
              ),
              trailing: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 35.0,
              ),
              title: Text(
                'LOVE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 45.0,
              vertical: 5.0,
            ),
            color: Colors.white,
            child: ListTile(
              onTap: () {
                setState(() {
                  wish = Random().nextInt(5) + 6;
                });
              },
              leading: Icon(
                Icons.attach_money,
                color: Colors.green,
                size: 35.0,
              ),
              trailing: Icon(
                Icons.attach_money,
                color: Colors.green,
                size: 35.0,
              ),
              title: Text(
                'MONEY',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 45.0,
              vertical: 5.0,
            ),
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.card_giftcard,
                color: Colors.indigo,
                size: 35.0,
              ),
              trailing: Icon(
                Icons.card_giftcard,
                color: Colors.indigo,
                size: 35.0,
              ),
              onTap: () {
                setState(() {
                  wish = Random().nextInt(5) + 11;
                });
              },
              title: Text(
                'ADVICE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: 350,
            child: Divider(
              color: Colors.pink[300],
              thickness: 2,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 150,
            width: double.infinity,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: Text(
                fortunes[wish],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
