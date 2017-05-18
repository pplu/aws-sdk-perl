package Paws::Credential::Explicit;
  use Moose;

  has access_key => (is => 'ro', isa => 'Str', required => 1);
  has secret_key => (is => 'ro', isa => 'Str', required => 1);
  has session_token => (is => 'ro', isa => 'Str');

  with 'Paws::Credential';

  no Moose;
1;
