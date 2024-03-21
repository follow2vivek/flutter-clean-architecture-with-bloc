
import 'package:clean/data/remote/user_remote.dart';
import 'package:clean/data/repository/user_repository_impl.dart';
import 'package:clean/domain/repository/user_repository.dart';
import 'package:clean/domain/usecases/user_usecase.dart';
import 'package:clean/presentation/bloc/user_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup(){
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerFactory(() => UserRemote(getIt()));
  getIt.registerFactory<UserRepository>(() => UserRepositoryImpl(getIt()));

  getIt.registerFactory(() => UserUseCase(getIt()));
  getIt.registerFactory(() => UserCubit(getIt()));
}