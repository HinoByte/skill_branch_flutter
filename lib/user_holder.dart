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

  User getUserByLogin(String login) => users[login];

  User registerUserByPhone(String name, String phone) {
    User user = User(name: name, phone: User.checkPhone(phone));
    if (!users.containsKey(user.login)) {
      users[user.login] = user;
      return user;
    } else {
      throw Exception('A user with this name already exists');
    }
  }

  User registerUserByEmail(String name, String email) {
    User user = User(name: name, email: email);

    print(user.toString());

    if (!users.containsKey(user.login)) {
      users[user.login] = user;
      return user;
    } else {
      throw Exception('A user with this email already exists');
    }
  }

  void setFriends(String login, Iterable<User> friends) =>
      users[login].addFriend(friends);

  User findUserInFriends(String login, User user) {
    users[login].friends.forEach((e) {
      if (e == user) return users[login];
    });
    return user;
   //return throw Exception('${user.login} is not a friend of the login');
  }
}
