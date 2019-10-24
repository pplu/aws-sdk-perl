# Generated from json/callresult_class.tt

package Paws::Config::DescribeAggregateComplianceByConfigRulesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_AggregateComplianceByConfigRule/;
  has AggregateComplianceByConfigRules => (is => 'ro', isa => ArrayRef[Config_AggregateComplianceByConfigRule]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'AggregateComplianceByConfigRules' => {
                                                       'class' => 'Paws::Config::AggregateComplianceByConfigRule',
                                                       'type' => 'ArrayRef[Config_AggregateComplianceByConfigRule]'
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

Paws::Config::DescribeAggregateComplianceByConfigRulesResponse

=head1 ATTRIBUTES


=head2 AggregateComplianceByConfigRules => ArrayRef[Config_AggregateComplianceByConfigRule]

Returns a list of AggregateComplianceByConfigRule object.


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;