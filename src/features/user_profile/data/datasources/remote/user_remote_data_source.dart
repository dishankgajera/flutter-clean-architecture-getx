import '../../models/user_model.dart';

class UserRemoteDataSource {
  Future<UserModel> fetchUserProfile() async {
    // Simulate an API call
    await Future.delayed(Duration(seconds: 1));
    return UserModel(id: '1', name: 'John Doe');
  }
}
