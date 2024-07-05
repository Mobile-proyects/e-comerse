import 'package:e_commerse_apk/src/presentation/widgets/DefaultButton.dart';
import 'package:e_commerse_apk/src/presentation/widgets/DefaultTextfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/DefaultIconBack.dart';

class Registerpage extends StatelessWidget {
  const Registerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/img/background3.jpg',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken
            ),
            Defaulticonback(
              left: 15,
              top: 35,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width *0.85,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.3),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 100,
                  ),
                  Text(
                    'Registro',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 25,
                        right: 25
                    ),
                    child: DefaultTextfield(
                      label: 'Nombre',
                      icon: Icons.person,
                      onChanged: (text) {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 25,
                        right: 25
                    ),
                    child: DefaultTextfield(
                      label: 'Apellido',
                      icon: Icons.person,
                      onChanged: (text) {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 25,
                        right: 25
                    ),
                    child: DefaultTextfield(
                      label: 'Email',
                      icon: Icons.email,
                      onChanged: (text) {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 25,
                        right: 25
                    ),
                    child: DefaultTextfield(
                      label: 'Telefono',
                      icon: Icons.phone,
                      onChanged: (text) {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 25,
                        right: 25
                    ),
                    child: DefaultTextfield(
                      label: 'Contraseña',
                      icon: Icons.lock,
                      onChanged: (text) {},
                      obscureText: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 25,
                        right: 25
                    ),
                    child: DefaultTextfield(
                      label: 'Confirmar Contraseña',
                      icon: Icons.lock_outline,
                      onChanged: (text) {},
                      obscureText: true,
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(left: 25, right: 25, top: 15),
                    child: Defaultbutton(
                        text: 'REGISTRARSE',
                        onPressed: () {}
                    )
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
