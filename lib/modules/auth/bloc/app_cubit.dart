import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_app/modules/auth/models/auth_error.dart';
import 'package:bloc/bloc.dart';
import 'package:my_app/modules/auth/bloc/app_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit():super(AuthState.initial());

  void login(String username, String password) async {
    emit(AuthStateInProgress());

    try {
      final credential = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: username, password: password);
      final user = credential.user!;
      emit(AuthStateLoginSuccess(user: user));
    } on FirebaseAuthException catch (e) {
      emit(AuthStateFailure(error: AuthError.from(e)));
    }
  }
}