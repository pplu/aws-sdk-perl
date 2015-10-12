
package Paws::ECS::DescribeTasksResponse;
  use Moose;
  has failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]');
  has tasks => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Task]');


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTasksResponse

=head1 ATTRIBUTES

=head2 failures => ArrayRef[L<Paws::ECS::Failure>]

  Any failures associated with the call.
=head2 tasks => ArrayRef[L<Paws::ECS::Task>]

  The list of tasks.


=cut

1;