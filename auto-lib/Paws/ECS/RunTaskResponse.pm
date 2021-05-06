
package Paws::ECS::RunTaskResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]', traits => ['NameInRequest'], request_name => 'failures' );
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Task]', traits => ['NameInRequest'], request_name => 'tasks' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::RunTaskResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECS::Failure>]

Any failures associated with the call.


=head2 Tasks => ArrayRef[L<Paws::ECS::Task>]

A full description of the tasks that were run. The tasks that were
successfully placed on your cluster are described here.


=head2 _request_id => Str


=cut

1;