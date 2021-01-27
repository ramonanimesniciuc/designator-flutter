

import 'package:designator/src/models/user.model.dart';
import 'package:designator/src/resources/users.api.provider.dart';

class Repository{
  final userApiProvider = UserApiProvider();

  Future<User> fetchAllUsers() => userApiProvider.fetchUsers();
}