import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:lottie/lottie.dart';
import 'package:splash/Home.dart';

import 'CardPlanet.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final data = [
    CardData(
      title: 'Cosmic Inspiratio',
      subtitle: 'A futuristic illustration of an astronaut focused on a laptop, symbolizing exploration and discovery.',
      image: LottieBuilder.asset('assets/animation/img-4.json'),
      backgroundColor: Colors.white,
      titleColor: Color(0xFFFE7BE5),
      subtitleColor: Color(0xFFFFF3DA),
      backgroundimage: LottieBuilder.asset('assets/animation/bubble.json') ,

    ),
    CardData(
        title: 'Cosmic Beats',
        subtitle: 'The image symbolizes humanity’s journey into the cosmos with a sense of adventure and rhythm',
        image: LottieBuilder.asset('assets/animation/img1.json'),
        backgroundColor: Color(0xff313866),
        titleColor: Color(0xFFFE7BE5),
        subtitleColor: Color(0xFFFFF3DA),
      backgroundimage: LottieBuilder.asset('assets/animation/bubble.json') ,

    ),
    CardData(
        title: '     Exploration Beyond the Cradle',
        subtitle: "A floating astronaut with a book, reflecting Tsiolkovsky's vision of humanity outgrowing Earth.",
        image: LottieBuilder.asset('assets/animation/img-2.json'),
        backgroundColor: Color(0xFF163020),
        titleColor: Color(0xFFFE7BE5),
        subtitleColor: Colors.yellow,
      backgroundimage: LottieBuilder.asset('assets/animation/bubble.json') ,

    ),
    CardData(
        title: 'A Future Among the Stars',
        subtitle: " An astronaut floating near planets, with Buzz Aldrin’s quote about humanity's future on the Moon.",
        image: LottieBuilder.asset('assets/animation/img-3.json'),
        backgroundColor: Color(0xFFFF4E11A6),
        titleColor: Color(0xFFFE7BE5),
        subtitleColor: Colors.white,
      backgroundimage: LottieBuilder.asset('assets/animation/bubble.json') ,

    ),

    CardData(
        title: 'Stepping Stones to Mars',
        subtitle: "An astronaut on a planet with Aldrin's quote about the Moon as a stepping stone to Mars.",
        image: LottieBuilder.asset('assets/animation/img-5.json'),
        backgroundColor: Color(0xFF3887BE),
        titleColor: Color(0xFFFE7BE5),
        subtitleColor: Colors.white,
      backgroundimage:LottieBuilder.asset('assets/animation/bubble.json') ,

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        // radius: 200,
        itemCount: data.length,
        colors: data.map((e) => e.backgroundColor).toList(),
radius: 15,
        itemBuilder: (int index) {
          return CardUIView(
              data: data[index]
          );
        },
        onChange: (index){
          print(index);
        },
        onFinish: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Home();
          }));
        },
      ),
    );
  }

}