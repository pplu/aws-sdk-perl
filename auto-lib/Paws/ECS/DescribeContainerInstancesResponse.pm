
package Paws::ECS::DescribeContainerInstancesResponse;
  use Moose;
  has ContainerInstances => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ContainerInstance]', traits => ['Unwrapped'], xmlname => 'containerInstances' );
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]', traits => ['Unwrapped'], xmlname => 'failures' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeContainerInstancesResponse

=head1 ATTRIBUTES


=head2 ContainerInstances => ArrayRef[L<Paws::ECS::ContainerInstance>]

The list of container instances.



=head2 Failures => ArrayRef[L<Paws::ECS::Failure>]

Any failures associated with the call.




=cut

1;