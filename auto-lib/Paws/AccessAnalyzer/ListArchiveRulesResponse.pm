
package Paws::AccessAnalyzer::ListArchiveRulesResponse;
  use Moose;
  has ArchiveRules => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::ArchiveRuleSummary]', traits => ['NameInRequest'], request_name => 'archiveRules', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ListArchiveRulesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveRules => ArrayRef[L<Paws::AccessAnalyzer::ArchiveRuleSummary>]

A list of archive rules created for the specified analyzer.


=head2 NextToken => Str

A token used for pagination of results returned.


=head2 _request_id => Str


=cut

