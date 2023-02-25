import 'package:bloc/bloc.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:final_news_app/moduls/home_screen/HomeScreen.dart';
import 'package:final_news_app/network/remote/dio_helper.dart';
import 'package:final_news_app/shared/cubit/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../moduls/search/search.dart';

class NewsCubit extends Cubit<FinalNewsAppState>{
  NewsCubit():super(InitialNewsAppState()) ;
  static NewsCubit get(context)=>BlocProvider.of(context) ;

List<Widget>screen = const[
  HomeScreen() ,
  SearchScreen()
] ;
  bool isSearch =false ;

  String emailAddress ='abdalrhman@gmail' ;
  String password = '123456789' ;
  int ch = 0  ;

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  var FormKey = GlobalKey<FormState>() ;

  List<CustomNavigationBarItem>items = [
  CustomNavigationBarItem(
     icon: const Icon(
       Icons.home_outlined ,
     ) ,
  ),
  CustomNavigationBarItem(
    icon: const Icon(
        Icons.search_outlined
    ) ,) ,
  CustomNavigationBarItem(
    icon: const Icon(
        Icons.person
    ) ,) ,
  ] ;

  bool CheckBoxValue = false ;
  void CheckBox(bool value)
  {
    CheckBoxValue = value ;
    emit(CheckBoxState()) ;
  }

  int currentIndex = 0 ;
  void changeCurrent(int index)
  {
    currentIndex = index ;
    emit(ChagesState()) ;
  }


  List<dynamic>TopHeadLine =[] ;
  void getDataTopHeadLine()
  {
    emit(TopHeadLineLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country':'us' ,
        'apiKey':'06a71991c55649ceabd46b6e6cc46b8f'
      } ,
    ).then((value) {
      TopHeadLine = value.data['articles'] ;


      emit(TopHeadLineSuccessState()) ;

    }
    ).catchError((e){
      print(e.toString()) ;
      emit(TopHeadLineErrorState(e.toString())) ;
    });
  }

  List<dynamic>business =[] ;
  void getDataBusiness()
  {
    emit(BusinessLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country':'us' ,
        'category':'business' ,
        'apiKey':'06a71991c55649ceabd46b6e6cc46b8f'
      } ,
    ).then((value) {
      business = value.data['articles'] ;


      emit(BusinessSuccessState()) ;

    }
    ).catchError((e){
      print(e.toString()) ;
      emit(BusinessErrorState(e.toString())) ;
    });
  }



  List<dynamic>science =[] ;
  void getDataScience()
  {
    emit(ScienceLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country':'us' ,
        'category':'science' ,
        'apiKey':'06a71991c55649ceabd46b6e6cc46b8f'
      } ,
    ).then((value) {
      science = value.data['articles'] ;


      emit(ScienceSuccessState()) ;

    }
    ).catchError((e){
      print(e.toString()) ;
      emit(ScienceErrorState(e.toString())) ;
    });
  }


  List<dynamic>sport =[] ;
  void getDataSport()
  {
    emit(SportLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country':'br' ,
        'category':'sport' ,
        'apiKey':'06a71991c55649ceabd46b6e6cc46b8f'
      } ,
    ).then((value) {
      sport = value.data['articles'] ;


      emit(SportSuccessState()) ;

    }
    ).catchError((e){
      print(e.toString()) ;
      emit(SportErrorState(e.toString())) ;
    });
  }

  List<dynamic>tech =[] ;
  void getDataTech()
  {
    emit(TechologyLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country':'us' ,
        'category':'technology' ,
        'apiKey':'06a71991c55649ceabd46b6e6cc46b8f'
      } ,
    ).then((value) {
      tech = value.data['articles'] ;


      emit(TechologySuccessState()) ;

    }
    ).catchError((e){
      print(e.toString()) ;
      emit(TechologyErrorState(e.toString())) ;
    });
  }

  List<dynamic>health =[] ;
  void getDataHealth()
  {
    emit(HealthLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country':'us' ,
        'category':'health' ,
        'apiKey':'06a71991c55649ceabd46b6e6cc46b8f'
      } ,
    ).then((value) {
      health = value.data['articles'] ;


      emit(HealthSuccessState()) ;

    }
    ).catchError((e){
      print(e.toString()) ;
      emit(HealthErrorState(e.toString())) ;
    });
  }
  List<dynamic>entertainment =[] ;
  void getDataEnter()
  {
    emit(EntertainmentLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country':'br' ,
        'category':'entertainment' ,
        'apiKey':'06a71991c55649ceabd46b6e6cc46b8f'
      } ,
    ).then((value) {
      entertainment = value.data['articles'] ;


      emit(EntertainmentSuccessState()) ;

    }
    ).catchError((e){
      print(e.toString()) ;
      emit(EntertainmentErrorState(e.toString())) ;
    });
  }


  List<dynamic>general =[] ;
  void getDataGengeral()
  {
    emit(GeneralLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country':'us' ,
        'category':'general' ,
        'apiKey':'06a71991c55649ceabd46b6e6cc46b8f'
      } ,
    ).then((value) {
      general = value.data['articles'] ;


      emit(GeneralSuccessState()) ;

    }
    ).catchError((e){
      print(e.toString()) ;
      emit(GeneralErrorState(e.toString())) ;
    });
  }

  List<dynamic>everyThing =[] ;
  void getDataEvery({required String value})
  {
    emit(EveryThingLoadingState());
    DioHelper.getData(
      url: 'v2/everything',
      query: {
        'q':value ,
        'apiKey':'06a71991c55649ceabd46b6e6cc46b8f'
      } ,
    ).then((value) {
      everyThing = value.data['articles'] ;


      emit(EveryThingSuccessState()) ;

    }
    ).catchError((e){
      print(e.toString()) ;
      emit(EveryThingErrorState(e.toString())) ;
    });
  }
}