
package Paws::CloudFormation::ListStackInstancesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackInstanceSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackInstancesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all of the remaining results,
C<NextToken> is set to a token. To retrieve the next set of results,
call C<ListStackInstances> again and assign that token to the request
object's C<NextToken> parameter. If the request returns all results,
C<NextToken> is set to C<null>.


=head2 Summaries => ArrayRef[L<Paws::CloudFormation::StackInstanceSummary>]

A list of C<StackInstanceSummary> structures that contain information
about the specified stack instances.


=head2 _request_id => Str


=cut

