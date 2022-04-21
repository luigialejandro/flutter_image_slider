import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final SATimages = [
    'assets/images/SAT-Aguascalientes.png',
    'assets/images/SAT-CdJuarez.png',
    'assets/images/SAT-Celaya.png',
    'assets/images/SAT-Chihuahua.png',
    'assets/images/SAT-Culiacan.png',
    'assets/images/SAT-Durango.png',
    'assets/images/SAT-Hermosillo.png',
    'assets/images/SAT-Irapuato.png',
    'assets/images/SAT-Oaxaca.png',
    'assets/images/SAT-Pachuca.png',
    'assets/images/SAT-Puebla.png',
    'assets/images/SAT-Queretaro.png',
    'assets/images/SAT-Tepic.png',
    'assets/images/SAT-Veracruz.png',
    'assets/images/SAT-Zapopan.png',
  ];

  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage('assets/images/rounded_backgroundsat.png'),
                    fit: BoxFit.fill)),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            child: CarouselSlider.builder(
              itemCount: SATimages.length,
              itemBuilder: (context, index, realIndex) {
                final SATimage = SATimages[index];
                return buildImage(SATimage, index);
              },
              options: CarouselOptions(
                //height: 515,
                height: 300,
                //viewportFraction: 1,
                autoPlay: true,
                enlargeCenterPage: true,
                //enlargeStrategy: CenterPageEnlargeStrategy.height,
                //autoPlayInterval: Duration(seconds: 3),
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 190,
                height: 45,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffD9BCA3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60)),
                      ),
                    ),
                    child: Text(
                      'Comenzar',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
          )
          /*Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                    margin: EdgeInsets.only(bottom: 35),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text('Comenzar',
                                style: TextStyle(fontSize: 18))),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[700],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))))),
              ),
            ],
          )*/
          /*Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              color: Colors.yellow,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                          padding: EdgeInsets.all(5),
                          child:
                              Text('Comenzar', style: TextStyle(fontSize: 18))),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))))
                ],
              ),
            ),
          )*/
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget buildImage(String SATimage, int index) => ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 1), //40  //1
          color: Colors.grey,
          child: Image.asset(SATimage, fit: BoxFit.cover),
        ),
      );
}
