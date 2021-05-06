
package Paws::AccessAnalyzer::ListAnalyzedResourcesResponse;
  use Moose;
  has AnalyzedResources => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::AnalyzedResourceSummary]', traits => ['NameInRequest'], request_name => 'analyzedResources', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ListAnalyzedResourcesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzedResources => ArrayRef[L<Paws::AccessAnalyzer::AnalyzedResourceSummary>]

A list of resources that were analyzed.


=head2 NextToken => Str

A token used for pagination of results returned.


=head2 _request_id => Str


=cut

