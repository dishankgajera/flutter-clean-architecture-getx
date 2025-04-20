import '../entities/user.dart';
import '../repositories/user_repository.dart';

class GetUserProfile {
  final UserRepository repository;

  GetUserProfile(this.repository);

  Future<User> call() => repository.getUserProfile();
}