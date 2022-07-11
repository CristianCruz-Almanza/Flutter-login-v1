import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 350,
            color: Colors.red,
            child: Center(child: Text("Aqui vendra tu logo", style: TextStyle(fontSize: 30,color: Colors.white))),
          ),
          const SizedBox(height: 15,),
          TextFormField(
            decoration: InputDecoration(
              
              label: const Text("Ingresa tu email"),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
            ),
          ),
          const SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              
              label: const Text("ingresa tu contraseña"),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
            ),
          ),
          const SizedBox(height: 10,),
          MaterialButton(
            splashColor: Colors.transparent,
            minWidth: double.infinity,
            height: 50,
            color: Colors.red,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.login,color: Colors.white,),
                Text("Ingresar", style: TextStyle(color: Colors.white, fontSize: 18),),
              ],
              
            ),
            onPressed: (){},
          ),
          SizedBox(height: 10,),
          // ignore: prefer_const_constructors
          Text("Ingresar con:",style: TextStyle(fontSize: 15),),
          const SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 50,
            child: SignInButton(
              //padding: const EdgeInsets.all(5),
              text: "          Google",
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              Buttons.Google,
              onPressed: (){}
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            width: double.infinity,
            height: 50,
            child: SignInButton(
              //padding: const EdgeInsets.all(5),
              text: "          Facebook",
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              Buttons.Facebook,
              onPressed: (){}
            ),
          )
       ]
      ),
    );
  }
}