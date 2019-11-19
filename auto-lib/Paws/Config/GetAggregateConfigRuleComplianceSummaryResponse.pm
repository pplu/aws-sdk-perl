# Generated from json/callresult_class.tt

package Paws::Config::GetAggregateConfigRuleComplianceSummaryResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_AggregateComplianceCount/;
  has AggregateComplianceCounts => (is => 'ro', isa => ArrayRef[Config_AggregateComplianceCount]);
  has GroupByKey => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GroupByKey' => {
                                 'type' => 'Str'
                               },
               'AggregateComplianceCounts' => {
                                                'type' => 'ArrayRef[Config_AggregateComplianceCount]',
                                                'class' => 'Paws::Config::AggregateComplianceCount'
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

Paws::Config::GetAggregateConfigRuleComplianceSummaryResponse

=head1 ATTRIBUTES


=head2 AggregateComplianceCounts => ArrayRef[Config_AggregateComplianceCount]

Returns a list of AggregateComplianceCounts object.


=head2 GroupByKey => Str

Groups the result based on ACCOUNT_ID or AWS_REGION.


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;