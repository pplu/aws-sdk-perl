# Generated from json/callresult_class.tt

package Paws::Config::GetConformancePackComplianceDetailsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ConformancePackEvaluationResult/;
  has ConformancePackName => (is => 'ro', isa => Str, required => 1);
  has ConformancePackRuleEvaluationResults => (is => 'ro', isa => ArrayRef[Config_ConformancePackEvaluationResult]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ConformancePackRuleEvaluationResults' => {
                                                           'class' => 'Paws::Config::ConformancePackEvaluationResult',
                                                           'type' => 'ArrayRef[Config_ConformancePackEvaluationResult]'
                                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConformancePackName' => {
                                          'type' => 'Str'
                                        }
             },
  'IsRequired' => {
                    'ConformancePackName' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::GetConformancePackComplianceDetailsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConformancePackName => Str

Name of the conformance pack.


=head2 ConformancePackRuleEvaluationResults => ArrayRef[Config_ConformancePackEvaluationResult]

Returns a list of C<ConformancePackEvaluationResult> objects.


=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;