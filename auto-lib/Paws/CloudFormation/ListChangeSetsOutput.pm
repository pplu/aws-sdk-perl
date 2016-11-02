
package Paws::CloudFormation::ListChangeSetsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ChangeSetSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListChangeSetsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the output exceeds 1 MB, a string that identifies the next page of
change sets. If there is no additional page, this value is null.


=head2 Summaries => ArrayRef[L<Paws::CloudFormation::ChangeSetSummary>]

A list of C<ChangeSetSummary> structures that provides the ID and
status of each change set for the specified stack.


=head2 _request_id => Str


=cut

