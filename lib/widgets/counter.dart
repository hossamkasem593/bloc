

import 'package:blooc/widgets/cubit/count_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    CountCubit cubit =CountCubit.get(context);
     
    return BlocProvider(
      
      create: (context){
        return CountCubit();
      },
       child: BlocConsumer<CountCubit,CountState>(
        listener: (context, state) {
          
        },
       builder:(context, state) {
         return  Scaffold(
      appBar: AppBar(),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Row(
         children: [
          FloatingActionButton(
          onPressed: (){
          cubit.increment();
              
          },
           child: const Icon(
            Icons.add,
           ),
          
          ),
        SizedBox(width: 15,),
         Text(
          '${cubit.counter}',
         style: Theme.of(context).textTheme.headline4,),
         SizedBox(width: 15,),
         FloatingActionButton(
          onPressed: (){
        cubit.decrement();
              
          },
           child: const Icon(
            Icons.add,
           ),
          
         ),
      
         ],
      
         ),
         ],   
      
        ),
      );
   
    
       },
            
        ),
        
        ); 

    
      
      
    
   
  }
}