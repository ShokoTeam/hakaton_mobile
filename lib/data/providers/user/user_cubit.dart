import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/core/extensions.dart';
import 'package:hakaton_teamspace/data/api.dart';
import 'package:hakaton_teamspace/data/models/user.dart';

part 'user_state.dart';

class UserProvider extends Cubit<UserState> {
  UserProvider(User? initUser) : super(initUser == null ? UserEmpty() : UserAuthorized(initUser)) {
    user = initUser;
  }

  User? user;

  Future<void> loadUser(String token) async {
    final response = await Api.dio.get(Routes.user);
    final newUser = User.fromJson(response.data);
    user = newUser;
    safeEmit(UserAuthorized(user!));
  }

  Future<void> authViaEmail({required String email, required String password}) async {
    final response = await Api.dio.post(Routes.login, data: {"email": email, "password": password});
    final token = await response.data;
    Api.setToken(token);
    await loadUser(token);
  }
}
