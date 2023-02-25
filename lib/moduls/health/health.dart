import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:final_news_app/shared/cubit/cubit.dart';
import 'package:final_news_app/shared/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/comoponents/components.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit , FinalNewsAppState>(
        listener: (context , state){} ,
        builder: (context , state)
        {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed: ()=>Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios , color: Colors.black,),
              ),
            ),
            body:ConditionalBuilder(
              condition: NewsCubit.get(context).health.isNotEmpty,
              builder: (context)=> ListHomeitem(NewsCubit.get(context).health) ,
              fallback: (context)=>const Center(child: CircularProgressIndicator(),),
            ),
          ) ;
        },
    );
  }
}
