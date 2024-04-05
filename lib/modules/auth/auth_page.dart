import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/data/bloc/cubit/user_cubit.dart';
import 'package:hakaton_teamspace/modules/projects/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserProvider, UserState>(
      listener: (context, state) {
        if (state is UserAuthorized) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const ProjectsPage(),
          ));
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Auth Page')),
        body: const Center(
          child: _AuthButton(),
        ),
      ),
    );
  }
}

class _AuthButton extends StatefulWidget {
  const _AuthButton();

  @override
  State<_AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<_AuthButton> {
  bool _isLoading = false;

  void _auth() async {
    setState(() => _isLoading = true);
    await context.read<UserProvider>().authViaEmail(email: 'user@email.com', password: 'user');
    setState(() => _isLoading = true);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _auth,
      child: _isLoading ? const CircularProgressIndicator() : const Text('Авторизация'),
    );
  }
}
