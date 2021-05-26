
package Paws::AccessAnalyzer::GetAnalyzerResponse;
  use Moose;
  has Analyzer => (is => 'ro', isa => 'Paws::AccessAnalyzer::AnalyzerSummary', traits => ['NameInRequest'], request_name => 'analyzer', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetAnalyzerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Analyzer => L<Paws::AccessAnalyzer::AnalyzerSummary>

An C<AnalyzerSummary> object that contains information about the
analyzer.


=head2 _request_id => Str


=cut

