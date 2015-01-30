package Paws::API::Caller {
  use Moose::Role;

  has caller => (is => 'ro', default => sub {
    require Paws::Net::Caller;
    return Paws::Net::Caller->new(caller_for => $_[0])
  });

  has credentials => (
    is => 'ro',
    isa => 'Paws::Net::Credentials',
    lazy => 1,
    default => sub { Paws::Net::CredentialsProviderChain->new },
    handles => [ 'access_key', 'secret_key', 'session_token' ],
  );
}
1;
