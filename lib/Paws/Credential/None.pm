package Paws::Credential::None;
  use Moo;
  with 'Paws::Credential';

  sub access_key { q{} }

  sub secret_key { q{} }

  sub session_token { q{} }

  no Moo;

1;
