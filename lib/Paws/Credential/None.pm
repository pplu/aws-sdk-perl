package Paws::Credential::None;
  use Moose;
  with 'Paws::Credential';

  sub access_key { q{} }

  sub secret_key { q{} }

  sub session_token { q{} }

  no Moose;

1;
