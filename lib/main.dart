import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/data/api.dart';
import 'package:hakaton_teamspace/data/providers/board/board_cubit.dart';
import 'package:hakaton_teamspace/data/providers/projects/projects_cubit.dart';
import 'package:hakaton_teamspace/data/providers/user/user_cubit.dart';
import 'package:hakaton_teamspace/data/models/user.dart';
import 'package:hakaton_teamspace/modules/auth/auth_page.dart';
import 'package:hakaton_teamspace/modules/home_page.dart';
import 'package:hive_flutter/adapters.dart';

User? initUser;

void main() async {
  await Hive.initFlutter();
  ansiColorDisabled = false;

  final box = await Hive.openBox<String?>('local');
  final token = box.get('token', defaultValue: null);

  if (token == null) {
    initUser = null;
  } else {
    Api.setToken(token);
    try {
      final response = await Api.dio.get(Routes.user);
      initUser = User.fromJson(response.data);
    } catch (e) {
      initUser = null;
    }
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        home: initUser == null ? const AuthPage() : const HomePage(),
      ),
    );
  }
}
