
package Paws::Lightsail::GetContainerServiceDeploymentsResult;
  use Moose;
  has Deployments => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::ContainerServiceDeployment]', traits => ['NameInRequest'], request_name => 'deployments' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetContainerServiceDeploymentsResult

=head1 ATTRIBUTES


=head2 Deployments => ArrayRef[L<Paws::Lightsail::ContainerServiceDeployment>]

An array of objects that describe deployments for a container service.


=head2 _request_id => Str


=cut

1;