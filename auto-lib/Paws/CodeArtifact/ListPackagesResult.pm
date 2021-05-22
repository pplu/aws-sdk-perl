
package Paws::CodeArtifact::ListPackagesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Packages => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::PackageSummary]', traits => ['NameInRequest'], request_name => 'packages');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListPackagesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 Packages => ArrayRef[L<Paws::CodeArtifact::PackageSummary>]

The list of returned PackageSummary
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html)
objects.


=head2 _request_id => Str


=cut

