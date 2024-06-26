import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/core/utils.dart';
import 'package:hakaton_teamspace/data/providers/user/user_cubit.dart';
import 'package:hakaton_teamspace/modules/home_page.dart';
import 'package:hakaton_teamspace/widgets/widgets.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserProvider, UserState>(
      listener: (context, state) {
        if (state is UserAuthorized) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
        }
      },
      child: Scaffold(
        backgroundColor: UIColors.background,
        appBar: AppBar(title: const Text('Auth Page')),
        body: const Center(
          child: _AuthBody(),
        ),
      ),
    );
  }
}

class _AuthBody extends StatefulWidget {
  const _AuthBody();

  @override
  State<_AuthBody> createState() => _AuthBodyState();
}

class _AuthBodyState extends State<_AuthBody> {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  void dispose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();
    super.dispose();
  }

  bool _isLoading = false;

  void _auth() async {
    if (_isLoading) return;

    setState(() => _isLoading = true);
    try {
      await context.read<UserProvider>().authViaEmail(
            context,
            email: emailCtrl.text.trim(),
            password: passwordCtrl.text.trim(),
          );
    } on DioException catch (e) {
      if (!mounted) return;
      Utils.of(context).showError(e.response?.data);
    }
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Paddings.based),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          UITextField(
            controller: emailCtrl,
            hintText: 'Почта',
            prefixIcon: const Icon(Icons.email_outlined),
          ),
          const SizedBox(height: 20),
          UITextField(
            controller: passwordCtrl,
            hintText: 'Пароль',
            prefixIcon: const Icon(Icons.lock_outline),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: _auth,
            child: _isLoading ? const CircularProgressIndicator() : const Text('Авторизация'),
          ),
        ],
      ),
    );
  }
}
