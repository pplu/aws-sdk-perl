
package Paws::Lightsail::UpdateContainerServiceResult;
  use Moose;
  has ContainerService => (is => 'ro', isa => 'Paws::Lightsail::ContainerService', traits => ['NameInRequest'], request_name => 'containerService' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateContainerServiceResult

=head1 ATTRIBUTES


=head2 ContainerService => L<Paws::Lightsail::ContainerService>

An object that describes a container service.


=head2 _request_id => Str


=cut

1;