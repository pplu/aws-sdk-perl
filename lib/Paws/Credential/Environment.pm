package Paws::Credential::Environment;
  use Moose;

  has access_key => (is => 'ro', default => sub { $ENV{AWS_ACCESS_KEY} || $ENV{AWS_ACCESS_KEY_ID} });
  has secret_key => (is => 'ro', default => sub { $ENV{AWS_SECRET_KEY} || $ENV{AWS_SECRET_ACCESS_KEY} });
  has session_token => (is => 'ro', default => sub { $ENV{AWS_SESSION_TOKEN} });

  with 'Paws::Credential';

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::Environment

=head1 SYNOPSIS

  use Paws::Credential::Environment;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::Environment->new
  });

=head1 DESCRIPTION

The Environment provider retrieves credentials from environment variables: C<AWS_ACCESS_KEY_ID> and C<AWS_SECRET_ACCESS_KEY>, 
or alternately C<AWS_ACCESS_KEY> and C<AWS_SECRET_KEY>. It will also try to retrieve the optional session token from C<AWS_SESSION_TOKEN>

=cut
