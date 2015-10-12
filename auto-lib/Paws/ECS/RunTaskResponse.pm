
package Paws::ECS::RunTaskResponse;
  use Moose;
  has failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]');
  has tasks => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Task]');


### main pod documentation begin ###

=head1 NAME

Paws::ECS::RunTaskResponse

=head1 ATTRIBUTES

=head2 failures => ArrayRef[Paws::ECS::Failure]

  Any failures associated with the call.
=head2 tasks => ArrayRef[Paws::ECS::Task]

  A full description of the tasks that were run. Each task that was
successfully placed on your cluster are described here.


=cut

1;