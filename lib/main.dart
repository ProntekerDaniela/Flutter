import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}

class CustomCard {
  final int id;
  String image;
  String name;
  String description;

  CustomCard({
    required this.id,
    required this.image,
    required this.name,
    required this.description,
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _customCards = [
    CustomCard(
        id: 0,
        image: './assets/images/pict1.jpg',
        name: 'Gucci',
        description:
            '    Найдорожчий бренд у світі – Gucci. Продукція цієї компанії відома кожному. Фірму в 1921 заснував знаменитий модельєр Гуччіо Гуччі. Він і надав бренду своє ім’я.'),
    CustomCard(
        id: 1,
        image: './assets/images/pict2.jpg',
        name: 'Chanel',
        description:
            '    Відомий французький бренд вже не перший рік штурмує лідируючі позиції, але поки що поступається італійському конкуренту.'),
    CustomCard(
        id: 2,
        image: './assets/images/pict3.jpg',
        name: 'Prada',
        description:
            '    Prada виготовляє одяг, аксесуари, парфумерію та навіть предмети інтер’єру. Торік виручка перевищила 900 млн. доларів США.'),
    CustomCard(
        id: 3,
        image: './assets/images/pict4.png',
        name: 'Dolce & Gabbana',
        description:
            '    Новачок серед старожилів. Юний вік не заважає фірмі впевнено входити до ТОП-5 виробників одягу.'),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 171, 181, 63),
        appBar: AppBar(
          title: const Text('My Stateful Widget'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 54, 244, 187),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 90, left: 40, right: 40, bottom: 40),
          child: Column(
            children: [
              Card(
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(120.0),
                ),
                child: SizedBox(
                  height: 400,
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Image(
                        image: AssetImage(_customCards[index].image),
                        height: 100,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        _customCards[index].name,
                        style: const TextStyle(fontSize: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(_customCards[index].description),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (index != 0) {
                          index -= 1;
                        } else {
                          index = 3;
                        }
                      });
                    },
                    child: const Text('Previous'),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (index != 3) {
                            index += 1;
                          } else {
                            index = 0;
                          }
                        });
                      },
                      child: const Text('Next')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
