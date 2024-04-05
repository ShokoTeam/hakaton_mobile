import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/data/providers/board/board_cubit.dart';
import 'package:hakaton_teamspace/data/providers/projects/projects_cubit.dart';
import 'package:hakaton_teamspace/data/providers/user/user_cubit.dart';
import 'package:hakaton_teamspace/data/models/user.dart';
import 'package:hakaton_teamspace/modules/auth/auth_page.dart';
import 'package:hakaton_teamspace/modules/projects/projects_page.dart';

void main() {
  const initUser = null;
  ansiColorDisabled = false;

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
        BlocProvider(create: (_) => ProjectsProvider()),
        BlocProvider(create: (_) => BoardProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: initUser == null ? const AuthPage() : const ProjectsPage(),
      ),
    );
  }
}
