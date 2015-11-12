
package Paws::Config::GetComplianceSummaryByConfigRuleResponse;
  use Moose;
  has ComplianceSummary => (is => 'ro', isa => 'Paws::Config::ComplianceSummary');


### main pod documentation begin ###

=head1 NAME

Paws::Config::GetComplianceSummaryByConfigRuleResponse

=head1 ATTRIBUTES


=head2 ComplianceSummary => L<Paws::Config::ComplianceSummary>

  The number of AWS Config rules that are compliant and the number that
are noncompliant, up to a maximum of 25 for each.


=cut

1;