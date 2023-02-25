import 'package:final_news_app/moduls/home_screen/HomeScreen.dart';
import 'package:final_news_app/shared/comoponents/components.dart';
import 'package:final_news_app/shared/cubit/cubit.dart';
import 'package:final_news_app/shared/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit , FinalNewsAppState>(
        listener: (context , state){} ,
        builder: (context , state){
          return Scaffold(
            body: NewsCubit.get(context).screen[NewsCubit.get(context).currentIndex],
            bottomNavigationBar:CustomNavigationBar(

              currentIndex: NewsCubit.get(context).currentIndex,
              onTap: (index)
              {
                NewsCubit.get(context).changeCurrent(index);

              },
              items:NewsCubit.get(context).items,
              elevation: 0,
              borderRadius: const Radius.circular(15),
              unSelectedColor: Colors.grey,
              selectedColor: Colors.black,
              strokeColor: Colors.black,
              iconSize: 28,
            ),
          ) ;
        },
    );
  }
}
