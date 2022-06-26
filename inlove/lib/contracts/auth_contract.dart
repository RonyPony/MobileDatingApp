// ignore_for_file: file_names

import 'package:inlove/models/sexual_orientations.dart';

import '../models/user.dart';
import '../models/user_login.dart';

abstract class AuthContract {
  Future<bool>userExists(String userEmail);
  Future<User>findUserByEmail(String userEmail);
  Future<bool>performLogin(Login userLogin);
  Future<bool>saveLocalUserInfo(User usuario);
  Future<bool>updateUserInfo(User user);
  Future<List<SexualOrientation>>getAllSexes();
  Future<User> readLocalUserInfo();
}