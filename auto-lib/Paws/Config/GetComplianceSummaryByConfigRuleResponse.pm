
package Paws::Config::GetComplianceSummaryByConfigRuleResponse;
  use Moose;
  has ComplianceSummary => (is => 'ro', isa => 'Paws::Config::ComplianceSummary');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetComplianceSummaryByConfigRuleResponse

=head1 ATTRIBUTES


=head2 ComplianceSummary => L<Paws::Config::ComplianceSummary>

The number of AWS Config rules that are compliant and the number that
are noncompliant, up to a maximum of 25 for each.


=head2 _request_id => Str


=cut

1;