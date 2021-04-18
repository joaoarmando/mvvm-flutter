import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../stores/app_store.dart';
import '../controllers/signup_controller.dart';
import '../view-models/signup_viewmodel.dart';
import 'home_view.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _controller = SignUpController();
  var model = SignUpViewModel();

  var store;

  @override
  Widget build(BuildContext context) {
    store = Provider.of<AppStore>(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text("Cadastre-se"),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                  ),
                  labelText: "Name"
                ),
                validator: (value) {
                  if (value.isEmpty) return "Nome inválido";               
                  return null;
                },
                onSaved: (value) => model.name = value,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                  ),
                  labelText: "E-mail"
                ),
                validator: (value) {
                  if (value.isEmpty) return "E-mail inválido";               
                  return null;
                },
                onSaved: (value) => model.email = value,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                  ),                  
                  labelText: "Password"
                ),
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) return "Senha inválida";               
                  return null;
                },
                onSaved: (value) => model.passsword = value,
              ),
              SizedBox(height: 12),
              model.isSigningUp ? CircularProgressIndicator() 
              : ElevatedButton(                
                child: Text("Cadastrar"),
                onPressed: (){
                  if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                  }
                  
                  setState(() {
                    _controller.signUp(model).then((data) {                      
                      setState(() { });
                      store.setUser(data.name, data.email, data.picture, data.token);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
                    });
                  });
                }, 
              )
            ],
          ),
        ),
      ),
    );
  }
}