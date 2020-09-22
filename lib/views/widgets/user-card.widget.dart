import 'package:flutter/material.dart';
import 'package:todo_app/components/avatar.widget.dart';
import 'package:todo_app/controllers/login.controller.dart';
import 'package:todo_app/user.dart';
import 'package:todo_app/views/login.view.dart';

class UserCard extends StatelessWidget {
  final controller = new LoginController();

  @override
  Widget build(BuildContext context) {
    toLogin() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginView(),
        ),
      );
    }

    handleLogout() {
      controller.logout().then((data) {
        toLogin();
      });
    }

    return Container(
      padding: EdgeInsets.only(top: 40.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/notification.png'),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        children: [
          TDAvatar(
            path:
                'https://i.guim.co.uk/img/media/20098ae982d6b3ba4d70ede3ef9b8f79ab1205ce/0_0_969_581/master/969.jpg?width=1200&quality=85&auto=format&fit=max&s=ceee2e6c0dc161b985345a433dd58c67',
            width: 80,
          ),
          Text(
            'Agnaldo Burgo Junior',
            style: TextStyle(color: Colors.white),
          ),
          Container(
            height: 20,
            child: FlatButton(
              child: Text(
                'Sair',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                toLogin();
              },
            ),
          ),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
