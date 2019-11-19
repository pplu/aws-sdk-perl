# Generated from json/callresult_class.tt

package Paws::Config::DescribeConformancePackComplianceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ConformancePackRuleCompliance/;
  has ConformancePackName => (is => 'ro', isa => Str, required => 1);
  has ConformancePackRuleComplianceList => (is => 'ro', isa => ArrayRef[Config_ConformancePackRuleCompliance], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ConformancePackName' => 1,
                    'ConformancePackRuleComplianceList' => 1
                  },
  'types' => {
               'ConformancePackRuleComplianceList' => {
                                                        'class' => 'Paws::Config::ConformancePackRuleCompliance',
                                                        'type' => 'ArrayRef[Config_ConformancePackRuleCompliance]'
                                                      },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ConformancePackName' => {
                                          'type' => 'Str'
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

Paws::Config::DescribeConformancePackComplianceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConformancePackName => Str

Name of the conformance pack.


=head2 B<REQUIRED> ConformancePackRuleComplianceList => ArrayRef[Config_ConformancePackRuleCompliance]

Returns a list of C<ConformancePackRuleCompliance> objects.


=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;