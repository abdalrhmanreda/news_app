import 'package:final_news_app/moduls/Business/business.dart';
import 'package:final_news_app/moduls/entertainment/entertainmen.dart';
import 'package:final_news_app/moduls/general/general.dart';
import 'package:final_news_app/moduls/health/health.dart';
import 'package:final_news_app/moduls/search_screen/search_screen.dart';
import 'package:final_news_app/moduls/sport/sport.dart';
import 'package:final_news_app/moduls/tect/tech.dart';
import 'package:final_news_app/shared/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/comoponents/components.dart';
import '../../shared/cubit/state.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit ,FinalNewsAppState>(
       listener: (context,state){},
      builder: (context,state){
         return Scaffold(
           resizeToAvoidBottomInset: false,

           body:Padding(
             padding: const EdgeInsets.only(left: 15 , right:15 , top: 35 , bottom: 15),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 InkWell(
                   onTap: ()=>NavigatTo(context, const SearchScreen2Screen()),
                   child: Padding(
                     padding: const EdgeInsets.all(15.0),
                     child:Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: const [
                         Icon(Icons.search ,) ,
                         Text('search'),
                         Icon(Icons.keyboard_voice_outlined)
                       ],
                     ),
                   ),
                 ) ,
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           SmallWidget(text: 'Business', TextColor: 0xffd5ddeb, ConColor: 0xff4a6189 , context: context , widget: const BusinessScreen()) ,
                           const SizedBox(width: 7,) ,
                           SmallWidget(text: 'Health', TextColor: 0xfff9d6db , ConColor: 0xffcc5b82, context: context , widget: const HealthScreen()) ,
                           const SizedBox(width: 7,) ,
                           SmallWidget(text: 'Sport', TextColor: 0xff6d40da, ConColor: 0xffd4d4f6 , context: context , widget: const SportScreen()) ,

                         ],
                       ),
                       const SizedBox(height: 15,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                         children: [
                           SmallWidget(text: 'Entertainment', TextColor: 0xffd5ddeb, ConColor: 0xff4a6189  , context: context , widget: const EntertainmenScreen()) ,
                           const SizedBox(width: 7,) ,
                           SmallWidget(text: 'General', TextColor: 0xfff9d6db , ConColor: 0xffcc5b82 , context: context , widget: const GeneralScreen()) ,
                           const SizedBox(width: 7,) ,
                           SmallWidget(text: 'tech', TextColor: 0xff038535 , ConColor: 0xff9fecb3 ,  context: context , widget: const TechScreen()) ,

                         ],
                       ),

                     ],
                   ) ,
                 ) ,
                 SizedBox(
                   height: 210,
                   width: double.infinity,
                   child: ListSearchItem(NewsCubit.get(context).business)
                 ) ,
                 const SizedBox(height: 25,) ,
                 SizedBox(
                   height: 210,
                   width: double.infinity,
                   child: ListSearchItem(NewsCubit.get(context).science)
                 ) ,
                 const SizedBox(height: 25,) ,

               ],
             ),
           ),
         ) ;
      },
    );
  }
}
