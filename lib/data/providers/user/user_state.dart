part of 'user_cubit.dart';

sealed class UserState {}

final class UserAuthorized extends UserState {
  final User user;
  UserAuthorized(this.user);
}

final class UserEmpty extends UserState {}
