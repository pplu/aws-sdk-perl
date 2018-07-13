
package Paws::SSM::DescribeAssociationExecutionsResult;
  use Moose;
  has AssociationExecutions => (is => 'ro', isa => 'ArrayRef[Paws::SSM::AssociationExecution]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAssociationExecutionsResult

=head1 ATTRIBUTES


=head2 AssociationExecutions => ArrayRef[L<Paws::SSM::AssociationExecution>]

A list of the executions for the specified association ID.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;