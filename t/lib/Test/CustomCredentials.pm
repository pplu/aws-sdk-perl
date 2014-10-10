package Test::CustomCredentials {
  use Moose;
  use Net::AWS::Credentials;
  with 'Net::AWS::Credentials';

  sub access_key { 'CustomAK' };
  sub secret_key { 'CustomSK' };
  sub session_token {};

}

1;
