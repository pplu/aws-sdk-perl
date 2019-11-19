# Generated from json/callresult_class.tt

package Paws::Config::GetComplianceDetailsByConfigRuleResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_EvaluationResult/;
  has EvaluationResults => (is => 'ro', isa => ArrayRef[Config_EvaluationResult]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EvaluationResults' => {
                                        'class' => 'Paws::Config::EvaluationResult',
                                        'type' => 'ArrayRef[Config_EvaluationResult]'
                                      },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::GetComplianceDetailsByConfigRuleResponse

=head1 ATTRIBUTES


=head2 EvaluationResults => ArrayRef[Config_EvaluationResult]

Indicates whether the AWS resource complies with the specified AWS
Config rule.


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

1;