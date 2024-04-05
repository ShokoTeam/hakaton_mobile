import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/data/bloc/cubit/user_cubit.dart';
import 'package:hakaton_teamspace/data/models/user.dart';
import 'package:hakaton_teamspace/modules/auth/auth_page.dart';
import 'package:hakaton_teamspace/modules/projects/home_page.dart';

void main() {
  const initUser = null;

  runApp(const MyApp(initUser: initUser));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.initUser});

  final User? initUser;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserProvider(initUser)),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
        ),
        home: initUser == null ? const AuthPage() : const ProjectsPage(),
      ),
    );
  }
}
