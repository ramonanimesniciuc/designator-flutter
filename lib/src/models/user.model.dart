import 'package:designator/src/models/designer_resume.model.dart';

class User {
  String _username;
  String _first_name;
  String _last_name;
  int _points;
  String _description;
  String _avatar;
  DesignerResumee _resumee;

  User.fromJson( user){
    _username = user['username'];
    _first_name = user['first_name'];
    _last_name = user['last_name'];
    _points = user['points'];
    _description = user['description'];
    _avatar = user['avatar'];
    _resumee = user['resumee'];
  }

  String get username => _username;
  String get first_name => _first_name;
  String get last_name => _last_name;
  int get points => _points;
  String get description => _description;
  String get avatar => _avatar;
  DesignerResumee get resumee => _resumee;
}