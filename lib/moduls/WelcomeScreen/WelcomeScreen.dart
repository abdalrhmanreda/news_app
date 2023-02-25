import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:final_news_app/moduls/WelcomeScreen/screen1.dart';

import 'package:final_news_app/shared/comoponents/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/state.dart';
class WelcomeScree extends StatelessWidget {
  const WelcomeScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit , FinalNewsAppState>(
        listener:(context , state){} ,
        builder:(context , state){
          return Scaffold(

            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){},
                  child: TextLiquidFill(
                    text: 'InShort',
                    waveColor: Colors.black,
                    boxBackgroundColor: const Color(0xfff1f4f5),
                    textStyle: const TextStyle(
                        fontSize: 50.0,
                        color: Colors.grey,
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'play'
                    ),
                  ) ,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('News App' ,textStyle: const TextStyle(
                      fontFamily: 'inter' ,
                      fontSize: 18,
                      color: Colors.black
                    )),

                  ],
                  isRepeatingAnimation: true,
                  totalRepeatCount: 3,
                  onFinished: ()
                  {
                    NavigatTo(context, const Screen()) ;
                  },
                )

              ],
            ),
          );

        },
    );
  }
}
/*
* Text(
                  'INSHORT' , //
                  style: TextStyle(
                    fontFamily: 'play' ,
                    fontSize: 35 ,
                  ),
                )
* */