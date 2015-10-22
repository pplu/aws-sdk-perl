
package Paws::ECS::StartTaskResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]', traits => ['Unwrapped'], xmlname => 'failures' );
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Task]', traits => ['Unwrapped'], xmlname => 'tasks' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::StartTaskResponse

=head1 ATTRIBUTES

=head2 Failures => ArrayRef[L<Paws::ECS::Failure>]

  Any failures associated with the call.
=head2 Tasks => ArrayRef[L<Paws::ECS::Task>]

  A full description of the tasks that were started. Each task that was
successfully placed on your container instances are described here.


=cut

1;