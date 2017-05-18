package Paws::Credential::Explicit;
  use Moose;

  has access_key => (is => 'ro', isa => 'Str', required => 1);
  has secret_key => (is => 'ro', isa => 'Str', required => 1);
  has session_token => (is => 'ro', isa => 'Str');

  with 'Paws::Credential';

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::Explicit

=head1 SYNOPSIS

  use Paws::Credential::Explicit;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::Explicit->new(
      access_key => $ak,
      secret_key => $sk,
      session_token => $st,
    )
  });

=head1 DESCRIPTION

The Explicit provider is used to specify credentials inside your code.

It's bad practice to hard-code credentials inside your code. Please do not hard-code credentials inside your
code, and instead use other credential providers, or roll out you own.

=head2 access_key: Str

A string with an AWS access_key

=head2 secret_key: Str

A string with an AWS secret_key

=head2 session_token: Str (optional)

A string with an AWS session_token (if applies)

=cut
