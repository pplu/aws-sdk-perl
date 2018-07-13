
package Paws::SSM::DescribeAssociationExecutionTargetsResult;
  use Moose;
  has AssociationExecutionTargets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::AssociationExecutionTarget]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAssociationExecutionTargetsResult

=head1 ATTRIBUTES


=head2 AssociationExecutionTargets => ArrayRef[L<Paws::SSM::AssociationExecutionTarget>]

Information about the execution.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;