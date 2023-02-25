import 'package:bloc/bloc.dart';
import 'package:final_news_app/layout/news_layout.dart';
import 'package:final_news_app/moduls/WelcomeScreen/WelcomeScreen.dart';
import 'package:final_news_app/moduls/home_screen/HomeScreen.dart';
import 'package:final_news_app/moduls/search/search.dart';
import 'package:final_news_app/network/remote/dio_helper.dart';
import 'package:final_news_app/shared/cubit/blocObserver.dart';
import 'package:final_news_app/shared/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized() ;
  DioHelper.init() ;
  Bloc.observer = MyBlocObserver();
  runApp(FinalNewsApp());
}

class FinalNewsApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>NewsCubit()..getDataTopHeadLine()..getDataBusiness()..getDataScience()..getDataSport()..getDataEnter()..getDataHealth()..getDataTech()..getDataGengeral() ) ,
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: const TextTheme(
              bodyMedium: TextStyle(
                fontFamily: 'inter'
              ) ,
            ),
            primarySwatch: Colors.grey,
            primaryColor: Colors.black,
            scaffoldBackgroundColor:const Color(0xfff1f4f5) ,
            appBarTheme: const AppBarTheme(

              backgroundColor: Color(0xfff1f4f5) ,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Color(0xfff1f4f5) ,
                statusBarIconBrightness: Brightness.dark ,


              ) ,
            ) ,
          ),
          home:  WelcomeScree(),
        ) ,
    ) ;
  }
}