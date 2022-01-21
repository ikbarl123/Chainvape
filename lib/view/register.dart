part of 'view.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordconfController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
      void _login(){
  authBloc.add(RegisterProcess(email: _usernameController.text,password:_passwordController.text,password_confirmation: _passwordconfController.text ));}

    return BlocBuilder<AuthBloc, AuthState>(
      bloc: authBloc,
      builder: (context, state) {
        return Form(
          child: Container(
              key: _formKey,
              decoration: BuildBG(),
              child: Stack(children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 52,
                      ),
                      Image.asset(
                        'assets/images/Chainvapelogos_transparent21.png',
                        height: 69,
                        width: 302,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      buildTitle("Login"),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: buildText("Username")),
                            Center(
                              child: Container(
                                width: 343,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: TextFormField(
                                    // to trigger disabledBorder
                                    style: TextStyle(color: Colors.black),
                                    decoration: buildTextfield(""),
                                    controller: _usernameController,
                                    //onChanged: _authenticationFormBloc.onPasswordChanged,
                                    obscureText: false,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: buildText("Password")),
                            Center(
                              child: Container(
                                width: 343,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: TextFormField(
                                    // to trigger disabledBorder
                                    style: TextStyle(color: Colors.black),
                                    decoration: buildTextfield(""),
                                    controller: _passwordController,
                                    //onChanged: _authenticationFormBloc.onPasswordChanged,
                                    obscureText: true,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),SizedBox(
                              height: 10,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: buildText("Confirm Password")),
                            Center(
                              child: Container(
                                width: 343,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: TextFormField(
                                    // to trigger disabledBorder
                                    style: TextStyle(color: Colors.black),
                                    decoration: buildTextfield(""),
                                    controller: _passwordconfController,
                                    //onChanged: _authenticationFormBloc.onPasswordChanged,
                                    obscureText: true,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  width: 142,
                                  height: 52,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: ElevatedButton(
                                    onPressed: _login,
                                    child: (state is AuthLoading)?CircularProgressIndicator():Text(
                                      'Login',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    
                                    
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromRGBO(30, 81, 40, 1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ])),
        );
      },
    );
    
  }
}