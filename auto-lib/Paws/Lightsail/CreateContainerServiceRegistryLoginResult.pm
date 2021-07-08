
package Paws::Lightsail::CreateContainerServiceRegistryLoginResult;
  use Moose;
  has RegistryLogin => (is => 'ro', isa => 'Paws::Lightsail::ContainerServiceRegistryLogin', traits => ['NameInRequest'], request_name => 'registryLogin' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateContainerServiceRegistryLoginResult

=head1 ATTRIBUTES


=head2 RegistryLogin => L<Paws::Lightsail::ContainerServiceRegistryLogin>

An object that describes the log in information for the container
service registry of your Lightsail account.


=head2 _request_id => Str


=cut

1;