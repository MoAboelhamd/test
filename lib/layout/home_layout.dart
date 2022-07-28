import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test_app/modules/todo_tasks/archived_tasks.dart';
import 'package:test_app/modules/todo_tasks/done_tasks.dart';
import 'package:test_app/modules/todo_tasks/new_tasks.dart';
import 'package:test_app/shared/components/components.dart';
import 'package:test_app/shared/components/constants.dart';
import 'package:test_app/shared/cubit/cubit.dart';
import 'package:test_app/shared/cubit/states.dart';

class HomeLayout extends StatelessWidget
{



  var scaffoldkey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();


  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  //List<Map> tasks = [];

  // @override
  // void initState() {
  //
  //   super.initState();
  //
  //   createDatabase();
  //
  // }


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit , AppStates>(
        listener: (BuildContext context , AppStates state)
        {
          if(state is AppInsertDatabaseState)
            {
              Navigator.pop(context);
            }
        },
        builder: (BuildContext context , AppStates state)
        {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
          key: scaffoldkey,
          appBar: AppBar(
          title: Text(
            cubit.titles[cubit.currentIndex],
          ),
          ),
          body: state is AppGetDatabaseLoadingState  ? Center(child: CircularProgressIndicator()) : cubit.screens[cubit.currentIndex ],
          floatingActionButton: FloatingActionButton(
          onPressed: ()
          {
          if(cubit.isBottomSheetShown)
          {
          if (formKey.currentState!.validate())
          {
            cubit.insertToDatabase(
                title: titleController.text,
                time: timeController.text,
                date: dateController.text);
          // insertToDatabase(
          // title: titleController.text,
          // date: dateController.text,
          // time: timeController.text,
          // ).then((value)
          // {
          // getDataFromDatabase(database).then((value)
          // {
          // Navigator.pop(context);
          // // setState(()
          // // {
          // //   isBottomSheetShown = false;
          // //   fabIcon = Icons.edit;
          // //
          // //   tasks = value ;
          // //   print(tasks);
          // // });
          // });
          // });
          }
          }else
          {
          scaffoldkey.currentState!.showBottomSheet(
          (context) => Container(
          padding: EdgeInsets.all(20.0,),
          color: Colors.blue[50],
          child: Form(
          key: formKey,
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children:
          [
          defaultFormField(
          controller: titleController,
          type: TextInputType.text,
          label: 'Task Title',
          prefix: Icons.title,
          validate: (String value)
          {
          if (value.isEmpty) {
          return 'title must not be empty';
          }

          return null;
          },
          ),
          SizedBox(
          height: 15.0,
          ),
          defaultFormField(
          controller: timeController,
          type: TextInputType.datetime,
          label: 'Task Time',
          prefix: Icons.watch_later_outlined,
          validate: (String value)
          {
          if (value.isEmpty) {
          return 'time must not be empty';
          }

          return null;
          },
          onTap :()
          {
          showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
          ).then((value)
          {
          timeController.text = value!.format(context).toString();
          print(value.format(context));
          }
          );
          },
          ),
          SizedBox(
          height: 15.0,
          ),
          defaultFormField(
          controller: dateController,
          type: TextInputType.datetime,
          label: 'Task Date',
          prefix: Icons.calendar_today,
          validate: (String value)
          {
          if (value.isEmpty) {
          return 'date must not be empty';
          }

          return null;
          },
          onTap :()
          {
          showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.parse('2022-7-29'),
          ).then((value)
          {
          dateController.text = DateFormat.yMMMd().format(value!);
          }
          );
          },
          ),
          ],
          ),
          ),
          ),
          elevation: 5.0,
          ).closed.then((value)
          {
            cubit.changeBottomSheetState(
                isShow: false,
                icon: Icons.edit);
          });

          cubit.changeBottomSheetState(
              isShow: true,
              icon: Icons.add);
          }

          },
          child: Icon(
          cubit.fabIcon ,
          ),
          ),

          bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 25.0,
          currentIndex: cubit.currentIndex,
          onTap: (index)
          {
            cubit.changeIndex(index);
          },
        items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.menu),
        label: 'Tasks',
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.check_circle_outline),
        label: 'Done',
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.archive_outlined),
        label: 'Archive',
        ),
        ],
        ),
        );
        },
      ),
    );
  }


  // Future<String> getName() async
  // {
  //   return 'Ahmed Ali' ;
  // }





}



