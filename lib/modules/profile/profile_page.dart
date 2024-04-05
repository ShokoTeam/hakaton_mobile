import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/data/providers/user/user_cubit.dart';
import 'package:hakaton_teamspace/widgets/scaffold.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return UIScaffold(
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
                        CircleAvatar(
                          radius: 36,
                          backgroundColor: UIColors.brand,
                          child: Icon(
                            user.isBusiness ? Icons.business_center : Icons.person,
                            size: 48,
                            color: UIColors.main,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(user.email, style: TStyles.heading),
                            Text('Должность: ${user.position}', style: TStyles.title),
                          ],
                        ),
                        const SizedBox(width: 32)
                      ],
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
