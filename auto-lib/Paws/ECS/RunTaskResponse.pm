
package Paws::ECS::RunTaskResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]', traits => ['Unwrapped'], xmlname => 'failures' );
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Task]', traits => ['Unwrapped'], xmlname => 'tasks' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::RunTaskResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECS::Failure>]

Any failures associated with the call.



=head2 Tasks => ArrayRef[L<Paws::ECS::Task>]

A full description of the tasks that were run. Each task that was
successfully placed on your cluster are described here.




=cut

1;