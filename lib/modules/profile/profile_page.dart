import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/data/providers/user/user_cubit.dart';
import 'package:hakaton_teamspace/modules/auth/auth_page.dart';
import 'package:hakaton_teamspace/widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.background,
      appBar: AppBar(title: const Text('Профиль')),
      body: BlocBuilder<UserProvider, UserState>(
        builder: (context, state) {
          if (state is UserAuthorized) {
            final user = state.user;
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(Paddings.based),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        UIAvatar(36, user.isBusiness),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${user.name} ${user.lastname}', style: TStyles.brandHeading),
                              Text(user.email, style: TStyles.header),
                              Text('Должность: ${user.position}', style: TStyles.title),
                            ],
                          ),
                        ),
                        const SizedBox(width: 32)
                      ],
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () async {
                        await context.read<UserProvider>().logout();
                        if (!context.mounted) return;
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => const AuthPage(),
                        ));
                      },
                      child: const SizedBox(
                        width: 120,
                        child: Center(child: Text('Выйти')),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return const Center(child: Text('Вы НЕ авторизованы'));
        },
      ),
    );
  }
}
