# Generated from json/callresult_class.tt

package Paws::Config::GetComplianceSummaryByConfigRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw/Config_ComplianceSummary/;
  has ComplianceSummary => (is => 'ro', isa => Config_ComplianceSummary);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ComplianceSummary' => {
                                        'class' => 'Paws::Config::ComplianceSummary',
                                        'type' => 'Config_ComplianceSummary'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::GetComplianceSummaryByConfigRuleResponse

=head1 ATTRIBUTES


=head2 ComplianceSummary => Config_ComplianceSummary

The number of AWS Config rules that are compliant and the number that
are noncompliant, up to a maximum of 25 for each.


=head2 _request_id => Str


=cut

1;