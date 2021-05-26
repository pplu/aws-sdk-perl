
package Paws::CloudFormation::ListTypeVersionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TypeVersionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::TypeVersionSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListTypeVersionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all of the remaining results,
C<NextToken> is set to a token. To retrieve the next set of results,
call this action again and assign that token to the request object's
C<NextToken> parameter. If the request returns all results,
C<NextToken> is set to C<null>.


=head2 TypeVersionSummaries => ArrayRef[L<Paws::CloudFormation::TypeVersionSummary>]

A list of C<TypeVersionSummary> structures that contain information
about the specified type's versions.


=head2 _request_id => Str


=cut

