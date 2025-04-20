import '../../datasources/remote/user_remote_data_source.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remote;

  UserRepositoryImpl(this.remote);

  @override
  Future<User> getUserProfile() => remote.fetchUserProfile();
}
