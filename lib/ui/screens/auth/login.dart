import 'package:flutter/material.dart';
import 'package:restaurant/ui/widgets/logo.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Logo("ロゴ画像"),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      "ログインはこちらから",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 80.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      SizedBox(
                        width: 140.0,
                        child: Text(
                          "メールアドレスかIDを入力",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "example@example.com",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      SizedBox(
                        width: 140.0,
                        child: Text(
                          "パスワードを入力",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Flexible(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "パスワードを忘れた方はこちら",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "新規登録はこちら",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50.0),
                      primary: Colors.black,
                    ),
                    onPressed: () {},
                    child: const Text("ログイン"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
