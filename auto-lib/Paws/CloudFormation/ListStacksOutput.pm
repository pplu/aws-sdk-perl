
package Paws::CloudFormation::ListStacksOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStacksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the output exceeds 1 MB in size, a string that identifies the next
page of stacks. If no additional page exists, this value is null.


=head2 StackSummaries => ArrayRef[L<Paws::CloudFormation::StackSummary>]

A list of C<StackSummary> structures containing information about the
specified stacks.


=head2 _request_id => Str


=cut

