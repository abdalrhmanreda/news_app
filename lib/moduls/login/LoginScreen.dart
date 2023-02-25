import 'package:final_news_app/layout/news_layout.dart';
import 'package:final_news_app/moduls/home_screen/HomeScreen.dart';
import 'package:final_news_app/shared/cubit/cubit.dart';
import 'package:final_news_app/shared/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/comoponents/components.dart';
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit , FinalNewsAppState>(
        listener:(context , state){} ,
        builder:(context , state){
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: NewsCubit.get(context).FormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Email' ,
                      style: TextStyle(
                          fontFamily: 'inter'
                      ),

                    ) ,
                    const SizedBox(height: 10,) ,
                    ReusableTextFormFeild(
                      controller:  NewsCubit.get(context).email,
                        isPass: false ,
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'Email must be not empty';
                          }
                          else {
                            return null;
                          }
                        }
                    ) ,
                    const SizedBox(height: 20,) ,
                    const Text(
                      'password' ,
                      style: TextStyle(
                          fontFamily: 'inter'
                      ),

                    ) ,
                    const SizedBox(height: 10,) ,
                    ReusableTextFormFeild(
                      controller: NewsCubit.get(context).pass,
                        isPass: true ,
                      validation: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'password must be not empty'  ;
                        }
                        else {
                          return null ;
                        }
                      }
                    ) ,
                    const SizedBox(height: 5,) ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Checkbox(
                          side: const BorderSide(color: Colors.grey),
                          activeColor: Colors.blueGrey,
                          value:  NewsCubit.get(context).CheckBoxValue,
                            onChanged: (value)
                            {
                              NewsCubit.get(context).CheckBox(value!);
                            } ,
                        ) ,
                        const Text(
                          'Remember me' ,
                          style: TextStyle(
                              fontFamily: 'inter'
                          ),

                        ) ,
                        const Spacer(flex: 1,) ,
                        TextButton(
                            onPressed: (){},
                            child: const Text(
                                'Forgot Password ?' ,
                                style: TextStyle(
                                  fontFamily: 'inter' ,
                                  color: Colors.black87 ,
                                  fontWeight: FontWeight.w600
                                ),
                            ) ,
                        )

                      ],
                    ) ,
                    const SizedBox(height: 20,) ,
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15) ,
                        color: const Color(0xff3f4446)
                      ),
                      child: MaterialButton(
                          onPressed: ()
                          {
                            if( NewsCubit.get(context).FormKey.currentState!.validate())
                            {
                                NavigatTo(context, const NewsLayout()) ;
                            }
                          } ,
                        child: const Text(
                          'Sign Up' ,
                          style: TextStyle(
                            color: Colors.white ,
                            fontFamily: 'inter' ,
                          ),
                        ),

                      ),
                    ) ,
                    const SizedBox(height: 29,) ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 20),
                          height: 1,
                          color: const Color(0xff3f4446),
                          width: 140,
                        ) ,

                        const Text(
                          'or' ,
                          style: TextStyle(
                              fontFamily: 'inter'
                          ),

                        ) ,
                        Container(
                          height: 1,
                          color: const Color(0xff3f4446),
                          width: 140,
                        ) ,
                      ],
                    ) ,
                    const SizedBox(height: 20,) ,
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20) ,
                          color: Colors.white
                      ),
                      child: MaterialButton(
                        onPressed: (){} ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  'assets/images/Google.png' ,
                                   width: 25,
                                   height: 25,
                              ) ,
                              const SizedBox(width: 15,) ,
                              const Text(
                                'Login with Google' ,
                                style: TextStyle(
                                    fontFamily: 'inter' ,
                                  fontWeight: FontWeight.w600
                                ),

                              ) ,

                            ],
                        ),

                      ),
                    ) ,
                    const SizedBox(height: 20,) ,
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20) ,
                          color: Colors.black
                      ),
                      child: MaterialButton(
                        onPressed: (){} ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/iphone.png' ,
                              width: 25,
                              height: 25,
                            ) ,
                            const SizedBox(width: 15,) ,
                            const Text(
                              'Login with Apple' ,
                              style: TextStyle(
                                  fontFamily: 'inter' ,
                                  fontWeight: FontWeight.w600 ,
                                color: Colors.white
                              ),

                            ) ,

                          ],
                        ),

                      ),
                    ) ,




                  ],
                ),
              ),
            ),
          ) ;
        },
    );
  }
}
