class User {
  void sayHello() {
    print('hello');
  }
}

class UserManager {
  User user;
  UserManager({required this.user});

  void sayHelloAgain() {
    user.sayHello();
  }
}

void main(List<String> args) {
  User user = User();
  UserManager userManager = UserManager(user: user);
  userManager.sayHelloAgain();
}
