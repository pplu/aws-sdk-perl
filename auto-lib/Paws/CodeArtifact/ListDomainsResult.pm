
package Paws::CodeArtifact::ListDomainsResult;
  use Moose;
  has Domains => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::DomainSummary]', traits => ['NameInRequest'], request_name => 'domains');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListDomainsResult

=head1 ATTRIBUTES


=head2 Domains => ArrayRef[L<Paws::CodeArtifact::DomainSummary>]

The returned list of DomainSummary
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainSummary.html)
objects.


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 _request_id => Str


=cut

