
package Paws::ECS::DescribeTaskSetsResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]', traits => ['NameInRequest'], request_name => 'failures' );
  has TaskSets => (is => 'ro', isa => 'ArrayRef[Paws::ECS::TaskSet]', traits => ['NameInRequest'], request_name => 'taskSets' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTaskSetsResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECS::Failure>]

Any failures associated with the call.


=head2 TaskSets => ArrayRef[L<Paws::ECS::TaskSet>]

The list of task sets described.


=head2 _request_id => Str


=cut

1;