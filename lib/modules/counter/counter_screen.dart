import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/modules/counter/cubit/cubit.dart';
import 'package:test_app/modules/counter/cubit/states.dart';

class CounterScreen extends StatelessWidget
{
  //int counter = 1 ;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit , CounterStates>(
        listener: (context , state)
        {
          if(state is CounterPlusState)
          {
            print('Plus State ${state.counter}');
          }
          if(state is CounterMinusState) {
            print('Minus State ${state.counter}');
          }
        },
        builder: (context , state)
        {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'counter',
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: ()
                    {
                      CounterCubit.get(context).minus();
                    },
                    child: Text(
                      'MINUS',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal:20.0,
                    ),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: ()
                    {
                      CounterCubit.get(context).plus();
                    },
                    child: Text(
                      'Plus',
                    ),
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// class _CounterScreenState extends State<CounterScreen> {
//   int counter = 1 ;
//   @override
//   void initState()
//   {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'counter',
//         ),
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextButton(
//               onPressed: (){
//                 setState(() {
//                   counter-- ;
//                   print(counter);
//                 });
//
//               },
//               child: Text(
//                 'MINUS',
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//             horizontal:20.0,
//             ),
//               child: Text(
//                 '$counter',
//                 style: TextStyle(
//                   fontSize: 50.0,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//             TextButton(
//               onPressed: (){
//                 setState(() {
//                   counter++ ;
//                   print(counter);
//                 });
//               },
//               child: Text(
//                 'Plus',
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
