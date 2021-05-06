
package Paws::AccessAnalyzer::GetArchiveRuleResponse;
  use Moose;
  has ArchiveRule => (is => 'ro', isa => 'Paws::AccessAnalyzer::ArchiveRuleSummary', traits => ['NameInRequest'], request_name => 'archiveRule', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetArchiveRuleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveRule => L<Paws::AccessAnalyzer::ArchiveRuleSummary>




=head2 _request_id => Str


=cut

