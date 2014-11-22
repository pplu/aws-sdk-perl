package Test::CustomCredentials {
  use Moose;
  use Paws::Net::Credentials;
  with 'Paws::Net::Credentials';

  sub access_key { 'CustomAK' };
  sub secret_key { 'CustomSK' };
  sub session_token {};

}

1;
