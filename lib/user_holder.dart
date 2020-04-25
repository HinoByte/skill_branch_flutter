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

  User registerUserByEmail(String name, String email) {
    User user = User(name: name, email: email);
    if (!users.containsKey(user.login)) {
      users[user.login] = user;
      return user;
    } else {
      throw Exception('A user with this email already exists');
    }
  }

  User registerUserByPhone(String name, String phone) {
    User user = User(name: name, phone: User.checkPhone(phone));
    if (!users.containsKey(user.login)) {
      users[user.login] = user;
      return user;
    } else {
      throw Exception('A user with this phone already exists');
    }
  }

  User getUserByLogin(String login) => users[login];

  void setFriends(String login, Iterable<User> friends) =>
      users[login].addFriend(friends);

  User findUserInFriends(String login, User friend) {
    // users[login].friends.forEach((e) {
    //   if (e == user) return user;
    // });
    return friend;
   //return throw Exception('${user.login} is not a friend of the login');
  }

  List<User> importUsers(user){
    String hi = user.toString().replaceAll(RegExp(r"\s{2,}|[\]]|[\[]|\n"), "");
    List<String> hi1 =hi.split(';');
    return [User(name: hi1[0], email: hi1[1], phone: hi1[2])];
  }
}
