import 'package:bloc/bloc.dart';
import 'package:clean/domain/entities/user_entity.dart';
import 'package:meta/meta.dart';

import '../../domain/usecases/user_usecase.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserUseCase userUsecase;

  UserCubit(this.userUsecase) : super(UserInitial());

  void getUser() async {
    emit(UserLoading());
    final user = await userUsecase.execute();
    emit(UserSuccess(user));
  }
}
