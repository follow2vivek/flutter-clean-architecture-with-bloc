import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/user_cubit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    context.read<UserCubit>().getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if(state is UserLoading){
            return Center(child: CircularProgressIndicator(),);
          }else if(state is UserSuccess){
            return Text(state.user.data?.firstName ?? 'no name');
          }
          return Text("Error");
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}