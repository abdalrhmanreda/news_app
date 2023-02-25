import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:final_news_app/network/remote/dio_helper.dart';
import 'package:final_news_app/shared/cubit/cubit.dart';
import 'package:final_news_app/shared/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/comoponents/components.dart';

class SearchScreen2Screen extends StatelessWidget {
  const SearchScreen2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit , FinalNewsAppState>(
      listener: (context , state){} ,
      builder: (context , state)
      {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              onPressed: ()=>Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios , color: Colors.black,),
            ),
          ),
          body:Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  onChanged: (value)
                  {
                    NewsCubit.get(context).getDataEvery(value: value) ;
                  },
                  obscureText: false,
                  decoration:  const InputDecoration(
                      prefixIcon: Icon(Icons.search) ,
                      prefixIconColor: Colors.black ,
                      suffixIcon: Icon(Icons.keyboard_voice_outlined) ,
                      suffixIconColor: Colors.black ,
                      border: InputBorder.none ,
                      label: Text('Search') ,
                      enabled: true
                  ),
                ),
              ) ,
              Expanded(
                  child:ListHomeitem(NewsCubit.get(context).everyThing) ,
              )
            ],
          ),
        ) ;
      },
    );
  }
}
