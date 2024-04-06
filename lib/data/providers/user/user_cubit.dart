import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/api_handler.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/core/extensions.dart';
import 'package:hakaton_teamspace/data/api.dart';
import 'package:hakaton_teamspace/data/models/user.dart';

part 'user_state.dart';

class UserProvider extends Cubit<UserState> with ApiHandler {
  UserProvider(User? initUser) : super(initUser == null ? UserEmpty() : UserAuthorized(initUser)) {
    user = initUser;
  }

  User? user;

  Future<void> loadUser(BuildContext context, String token) async {
    final response = await handleApiRequest(context, Api.dio.get(Routes.user));
    if (response == null) return;

    final newUser = User.fromJson(response.data);
    user = newUser;
    safeEmit(UserAuthorized(user!));
  }

  Future<void> authViaEmail(BuildContext context,
      {required String email, required String password}) async {
    final response = await handleApiRequest(
      context,
      Api.dio.post(Routes.login, data: {"email": email, "password": password}),
    );
    if (response == null) return;

    final token = await response.data;
    Api.setToken(token);
    await loadUser(context, token);
  }
}
