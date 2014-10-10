package Net::AWS::EnvCredentials {
  use Moose;

  has access_key => (is => 'ro', default => sub { $ENV{AWS_ACCESS_KEY} || $ENV{AWS_ACCESS_KEY_ID} });
  has secret_key => (is => 'ro', default => sub { $ENV{AWS_SECRET_KEY} || $ENV{AWS_SECRET_ACCESS_KEY} });
  has session_token => (is => 'ro', default => sub { $ENV{AWS_SESSION_TOKEN} });

  with 'Net::AWS::Credentials';

  no Moose;
}

1;



