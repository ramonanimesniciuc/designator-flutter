import 'package:designator/src/models/user.model.dart';

import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class UsersBloc {
  final _repository = Repository();
  final _usersFetcher = PublishSubject<User>();

  Observable<User> get allUsers => _usersFetcher.stream;

  fetchAllUsers() async {
    User user = await _repository.fetchAllUsers();
    _usersFetcher.sink.add(user);
  }

  dispose() {
    _usersFetcher.close();
  }
}

final bloc = UsersBloc();