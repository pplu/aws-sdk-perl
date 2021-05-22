
package Paws::AccessAnalyzer::GetAnalyzedResourceResponse;
  use Moose;
  has Resource => (is => 'ro', isa => 'Paws::AccessAnalyzer::AnalyzedResource', traits => ['NameInRequest'], request_name => 'resource');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetAnalyzedResourceResponse

=head1 ATTRIBUTES


=head2 Resource => L<Paws::AccessAnalyzer::AnalyzedResource>

An C<AnalyzedResource> object that contains information that Access
Analyzer found when it analyzed the resource.


=head2 _request_id => Str


=cut

