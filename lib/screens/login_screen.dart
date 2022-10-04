import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      textStyle: TextStyle(color: Color(0xFFBABABA)),
      child: Container(
        padding: EdgeInsets.all(24),
        color: Color(0xFF161616),
        child: Column(
          children: [
            Container(
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/csgo-logo-orange.png',
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'CS',
                          style: TextStyle(
                            color: Color(0xFFCE8404),
                            fontSize: 64,
                            fontFamily: 'Quantico',
                          ),
                        ),
                        Text(
                          'zeidre',
                          style:
                              TextStyle(fontSize: 64, fontFamily: 'Quantico'),
                        ),
                      ],
                    ),
                    TextField(
                      cursorColor: Color(0xFFBABABA),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Color(0xFFBABABA),
                      ),
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Email',
                        helperText: AppLocalizations.of(context)?.emailPlaceholder,
                      ),
                    ),
                    Container(
                      height: 8,
                    ),
                    TextField(
                      cursorColor: Color(0xFFBABABA),
                      obscureText: true,
                      style: TextStyle(
                        color: Color(0xFFBABABA),
                      ),
                      decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key),
                        hintText: 'Senha',
                        helperText: 'Digite sua senha',
                      ),
                    ),
                    ElevatedButton(
                      child: Text('Entrar'),
                      onPressed: () {
                        AlertDialog(
                          title: Text('Faça o login'),
                        );
                        debugPrint("Troca a linguagem para en!");
                        AppLocalizations.delegate.load(Locale("en"));
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
                child: Text(
              'desenvolvido por LiopiGuys 2021',
              style: Theme.of(context).textTheme.overline,
            )),
          ],
        ),
      ),
    );
  }
}
