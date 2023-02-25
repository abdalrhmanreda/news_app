import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:final_news_app/shared/comoponents/components.dart';
import 'package:final_news_app/shared/cubit/cubit.dart';
import 'package:final_news_app/shared/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit , FinalNewsAppState>(
        builder: (context , state) {
          return Scaffold(
            body:ConditionalBuilder(
              condition: NewsCubit.get(context).TopHeadLine.isNotEmpty,
              builder: (context)=> ListHomeitem(NewsCubit.get(context).TopHeadLine) ,
              fallback: (context)=>const Center(child: CircularProgressIndicator(),),
            ),
          ) ;
        },
        listener: (context , state) {} ,
    );
  }
}
