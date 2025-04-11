String fbaErrorConverter(String errorCode) {
  if (errorCode == 'invalid-credential') return 'Incorrect email or password';
  if (errorCode == 'sign_in_failed') return 'Please use another account';
  return 'Unknown Error';
}
