
package Paws::CloudFormation::ListStackResourcesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackResourceSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackResourceSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the output exceeds 1 MB, a string that identifies the next page of
stack resources. If no additional page exists, this value is null.


=head2 StackResourceSummaries => ArrayRef[L<Paws::CloudFormation::StackResourceSummary>]

A list of C<StackResourceSummary> structures.


=head2 _request_id => Str


=cut

