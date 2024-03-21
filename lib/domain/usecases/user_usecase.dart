import 'package:clean/domain/repository/user_repository.dart';

import '../entities/user_entity.dart';

class UserUseCase {
  final UserRepository _repository;

  UserUseCase(this._repository);

  Future<UserEntity> execute() async=> await _repository.getUserData();
}
