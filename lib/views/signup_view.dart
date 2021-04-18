import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
                onSaved: (value) {},
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
                onSaved: (value) {},
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
                onSaved: (value) {},
              ),
              ElevatedButton(                
                child: Text("Cadastrar"),
                onPressed: (){
                  if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                  }
                }, 
              )
            ],
          ),
        ),
      ),
    );
  }
}