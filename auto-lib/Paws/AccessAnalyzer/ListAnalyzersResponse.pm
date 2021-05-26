
package Paws::AccessAnalyzer::ListAnalyzersResponse;
  use Moose;
  has Analyzers => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::AnalyzerSummary]', traits => ['NameInRequest'], request_name => 'analyzers', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ListAnalyzersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Analyzers => ArrayRef[L<Paws::AccessAnalyzer::AnalyzerSummary>]

The analyzers retrieved.


=head2 NextToken => Str

A token used for pagination of results returned.


=head2 _request_id => Str


=cut

