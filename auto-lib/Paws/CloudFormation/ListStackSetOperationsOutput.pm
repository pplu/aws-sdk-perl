
package Paws::CloudFormation::ListStackSetOperationsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackSetOperationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackSetOperationsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all results, C<NextToken> is set to a
token. To retrieve the next set of results, call
C<ListOperationResults> again and assign that token to the request
object's C<NextToken> parameter. If there are no remaining results,
C<NextToken> is set to C<null>.


=head2 Summaries => ArrayRef[L<Paws::CloudFormation::StackSetOperationSummary>]

A list of C<StackSetOperationSummary> structures that contain summary
information about operations for the specified stack set.


=head2 _request_id => Str


=cut

