class LoginState {
  final bool isLoading;
  final bool isSuccess;
  final bool isError;

  LoginState({
    required this.isLoading,
    required this.isSuccess,
    required this.isError,
  });

  factory LoginState.initial() {
    return LoginState(isError: true, isLoading: false, isSuccess: false);
  }
  factory LoginState.loading() {
    return LoginState(isError: false, isLoading: true, isSuccess: false);
  }
  factory LoginState.success() {
    return LoginState(isError: false, isLoading: false, isSuccess: true);
  }
  factory LoginState.failure() {
    return LoginState(isError: true, isLoading: false, isSuccess: false);
  }
}
