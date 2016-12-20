
package Paws::SSM::DescribeInstancePatchStatesForPatchGroupResult;
  use Moose;
  has InstancePatchStates => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InstancePatchState]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInstancePatchStatesForPatchGroupResult

=head1 ATTRIBUTES


=head2 InstancePatchStates => ArrayRef[L<Paws::SSM::InstancePatchState>]

The high-level patch state for the requested instances.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;