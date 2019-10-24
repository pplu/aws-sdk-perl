# Generated from json/callresult_class.tt

package Paws::Config::DescribeConfigRuleEvaluationStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ConfigRuleEvaluationStatus/;
  has ConfigRulesEvaluationStatus => (is => 'ro', isa => ArrayRef[Config_ConfigRuleEvaluationStatus]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConfigRulesEvaluationStatus' => {
                                                  'class' => 'Paws::Config::ConfigRuleEvaluationStatus',
                                                  'type' => 'ArrayRef[Config_ConfigRuleEvaluationStatus]'
                                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigRuleEvaluationStatusResponse

=head1 ATTRIBUTES


=head2 ConfigRulesEvaluationStatus => ArrayRef[Config_ConfigRuleEvaluationStatus]

Status information about your AWS managed Config rules.


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

1;