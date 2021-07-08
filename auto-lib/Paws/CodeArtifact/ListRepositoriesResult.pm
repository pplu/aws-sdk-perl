
package Paws::CodeArtifact::ListRepositoriesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Repositories => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::RepositorySummary]', traits => ['NameInRequest'], request_name => 'repositories');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListRepositoriesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 Repositories => ArrayRef[L<Paws::CodeArtifact::RepositorySummary>]

The returned list of RepositorySummary
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html)
objects.


=head2 _request_id => Str


=cut

