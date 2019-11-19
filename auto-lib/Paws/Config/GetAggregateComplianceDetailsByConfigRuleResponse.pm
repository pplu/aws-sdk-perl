# Generated from json/callresult_class.tt

package Paws::Config::GetAggregateComplianceDetailsByConfigRuleResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_AggregateEvaluationResult/;
  has AggregateEvaluationResults => (is => 'ro', isa => ArrayRef[Config_AggregateEvaluationResult]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'AggregateEvaluationResults' => {
                                                 'class' => 'Paws::Config::AggregateEvaluationResult',
                                                 'type' => 'ArrayRef[Config_AggregateEvaluationResult]'
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

Paws::Config::GetAggregateComplianceDetailsByConfigRuleResponse

=head1 ATTRIBUTES


=head2 AggregateEvaluationResults => ArrayRef[Config_AggregateEvaluationResult]

Returns an AggregateEvaluationResults object.


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;