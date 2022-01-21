import 'package:chainvape/bloc/auth_bloc.dart';
import 'package:chainvape/bloc/vapestore_bloc.dart';
import 'package:chainvape/service/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chainvape/view/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Chainvape',
      home: MultiRepositoryProvider(
          providers: [
            RepositoryProvider(create: (context) => StoreService()),
            RepositoryProvider(create: (context) => AuthService()),
          ],
          child: MultiBlocProvider(providers: [
            BlocProvider<AuthBloc>(
            create: (BuildContext context) => AuthBloc(AuthService()),
                  ),
            BlocProvider<VapestoreBloc>(
            create: (BuildContext context) => VapestoreBloc(StoreService()),
                  ),
            ],
          child: App(),)
          ),
    );
  }
}

class App extends StatelessWidget {


  
  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocBuilder<AuthBloc,AuthState>(    
                builder: (context, state) {
                  print(state);
                if(state is AuthInit) {
                  authBloc.add(AppCheck());
                  return Center(child: CircularProgressIndicator(strokeWidth: 5,),);    
                } 
                if(state is AuthHasData){
                  return MainLayout();
                } 
                if(state is AuthLoading){               
                  return Center(child: CircularProgressIndicator(strokeWidth: 5,),);             
                 }
                 if(state is AuthFailed){
                return Splash();
                }
                return Container();
              },
            
          );
  }
}
