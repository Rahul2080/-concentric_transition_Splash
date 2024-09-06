import 'package:flutter/cupertino.dart';

class CardData{

  final String title;
  final String subtitle;
  final Widget image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Widget backgroundimage;

  CardData( {
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    required this.backgroundimage,
  });

}

class CardUIView extends StatelessWidget {
  const CardUIView({super.key, required this.data});
  final CardData data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(
        children: [
          Flexible(child: data.backgroundimage),
          Column(
            children: [
              const Spacer(flex: 6,),
              Flexible(
                  flex: 25,
                  child: data.image
              ),


              Text(
                data.title.toUpperCase(),
                style: TextStyle(
                    color: data.titleColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.clip
                ),
                maxLines: 1,
              ),
              const Spacer(),
              Text(
                data.subtitle,
                style: TextStyle(
                  color: data.subtitleColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}