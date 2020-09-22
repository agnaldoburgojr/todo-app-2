import 'package:flutter/material.dart';
import 'package:todo_app/components/busy.widget.dart';
import 'package:todo_app/components/button.widget.dart';
import 'package:todo_app/controllers/login.controller.dart';
import 'package:todo_app/views/home.views.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final controller = new LoginController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  var busy = false;

  // @override
  // void initState() {
  //   super.initState();
  //   handleSignIn();
  // }

  handleSignIn() {
    setState(() {
      busy = true;
    });
    controller
        .login()
        .then((data) => onSuccess())
        .catchError((err) => onError())
        .whenComplete(() => onComplete());
  }

  onSuccess() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeView(),
      ),
    );
  }

  onError() {
    var snackbar = new SnackBar(
      content: Text('Falha ao logar'),
    );
    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  onComplete() {
    setState(() {
      busy = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                TDBusy(
                  busy: busy,
                  child: Card(
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                        ),
                        Image.asset(
                          'assets/images/notification.png',
                          width: 250,
                        ),
                        Text(
                          'Olá desconhecido',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TDButton(
                          text: 'Login com Google',
                          image: 'assets/images/google.png',
                          callback: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeView(),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
