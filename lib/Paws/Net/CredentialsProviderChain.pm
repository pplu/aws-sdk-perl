package Paws::Net::CredentialsProviderChain {
  use Moose;

  use Module::Runtime qw//;

  has providers => (
    is => 'ro', 
    isa => 'ArrayRef[Str]', 
    default => sub {
      [ 'Paws::Net::EnvCredentials', 'Paws::Net::FileCredentials', 'Paws::Net::InstanceProfileCredentials' ]
    },
  );

  has selected_provider => (
    is => 'rw',
    does => 'Paws::Net::Credentials',
    handles => [ 'access_key', 'secret_key', 'session_token' ], 
  );

  sub BUILD {
    my ($self) = @_;
    foreach my $prov (@{ $self->providers }) {
      Module::Runtime::require_module($prov);
      my $creds = $prov->new;
      if ($creds->are_set) {
        $self->selected_provider($creds);
        return;
      }
    }
    # Tried all the providers... none got creds
    die "Can't find any credentials. I tried with " . (join ',', @{ $self->providers })
  }

  with 'Paws::Net::Credentials';
}

1;
