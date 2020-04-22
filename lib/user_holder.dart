import 'models/user.dart';

class UserHolder {
  Map<String, User> users = {};

  void registerUser(String name, String phone, String email) {
    User user = User(name: name, phone: phone, email: email);

    print(user.toString());

    if (!users.containsKey(user.login)) {
      users[user.login] = user;
    } else {
      throw Exception('A user with this name already exists');
    }
  }

  User getUserByLogin(String login) {
    return users[login];
  }

  User registerUserByPhone(String name, String phone) {
    User user = User(name: name, phone: User.checkPhone(phone), email: 'void');
    if (!users.containsKey(user.login)) {
      users[user.login] = user;
      return user;
    } else {
      throw Exception('A user with this name already exists');
    }
  }
}
