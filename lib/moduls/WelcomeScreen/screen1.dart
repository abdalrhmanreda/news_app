import 'package:final_news_app/shared/comoponents/components.dart';
import 'package:flutter/material.dart';

import '../login/LoginScreen.dart';
class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const  SizedBox(height: 30,) ,
              const Text(
                  'All your daily news\nin onc app' ,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'play' ,
                  fontSize: 30
                ),

              ) ,
              const SizedBox(height: 40,) ,
              const Text(
                ' Get Prsonalised daily reading\nsuggestions from the best news\nsources online' ,
                style: TextStyle(
                    fontFamily: 'inter' ,
                    fontSize: 16
                ),

              ) ,

              const Spacer(flex: 1,) ,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(

                      onPressed: ()
                      {
                        NavigatTo(context, LoginScreen()) ;
                      },

                      child: const Text('Skip' , style: TextStyle(color: Colors.black),))
                ],
              ) ,
            ],
          ),
        ),
      ),
    );
  }
}
