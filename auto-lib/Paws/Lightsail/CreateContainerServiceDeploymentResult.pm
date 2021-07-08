
package Paws::Lightsail::CreateContainerServiceDeploymentResult;
  use Moose;
  has ContainerService => (is => 'ro', isa => 'Paws::Lightsail::ContainerService', traits => ['NameInRequest'], request_name => 'containerService' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateContainerServiceDeploymentResult

=head1 ATTRIBUTES


=head2 ContainerService => L<Paws::Lightsail::ContainerService>

An object that describes a container service.


=head2 _request_id => Str


=cut

1;