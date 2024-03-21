part of 'user_cubit.dart';

@immutable
class UserState {}

 class UserInitial extends UserState {}
 class UserLoading extends UserState {}
 class UserSuccess extends UserState {
 UserEntity user;
 UserSuccess(this.user);
}
 class UserError extends UserState {}
