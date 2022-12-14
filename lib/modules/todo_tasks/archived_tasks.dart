import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/shared/components/components.dart';
import 'package:test_app/shared/cubit/cubit.dart';
import 'package:test_app/shared/cubit/states.dart';

class ArchiveTasksScreen extends StatelessWidget {
  const ArchiveTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit , AppStates>(
      listener: (context , state){},
      builder: (context , state)
      {
        var tasks = AppCubit.get(context).archiveTasks;
        return ListView.separated(
            itemBuilder: (context , index) => buildTasksItem(tasks[index] , context),
            separatorBuilder:(context , index) =>Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20.0,
              ),
              child: Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey,
              ),
            ),
            itemCount: tasks.length);
      },

    );
  }
}
