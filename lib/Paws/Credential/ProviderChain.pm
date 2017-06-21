package Paws::Credential::ProviderChain;
  use Moose;

  has providers => (
    is => 'ro', 
    isa => 'ArrayRef[Str]', 
    default => sub {
      [ 'Paws::Credential::Environment', 
        'Paws::Credential::File', 
        'Paws::Credential::ECSContainerProfile',
        'Paws::Credential::InstanceProfile' ]
    },
  );

  has selected_provider => (
    is => 'rw',
    does => 'Paws::Credential',
    handles => [ 'access_key', 'secret_key', 'session_token' ], 
  );

  sub BUILD {
    my ($self) = @_;
    foreach my $prov (@{ $self->providers }) {
      Paws->load_class($prov);
      my $creds = $prov->new;
      if ($creds->are_set) {
        $self->selected_provider($creds);
        return;
      }
    }
    # Tried all the providers... none got creds
    die "Can't find any credentials. I tried with " . (join ',', @{ $self->providers })
  }

  with 'Paws::Credential';
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::ProviderChain

=head1 SYNOPSIS

  use Paws::Credential::ProviderChain;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::ProviderChain->new(
      providers => [ 'Paws::Credential::Environment', 'Paws::Credential::InstanceProfile' ],
    )
  });

=head1 DESCRIPTION

The ProviderChain is used to call different credential providers, one by one, in order, until one of them returns credentials.

If none return credentials: an exception is raised.

It is the default provider for Paws

=head2 providers: ArrayRef[Str]

Defaults to C<[ 'Paws::Credential::Environment', 'Paws::Credential::File', 'Paws::Credential::InstanceProfile' ]>

=cut
