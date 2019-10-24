# Generated from json/callresult_class.tt

package Paws::Config::DescribeAggregationAuthorizationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_AggregationAuthorization/;
  has AggregationAuthorizations => (is => 'ro', isa => ArrayRef[Config_AggregationAuthorization]);
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
               'AggregationAuthorizations' => {
                                                'class' => 'Paws::Config::AggregationAuthorization',
                                                'type' => 'ArrayRef[Config_AggregationAuthorization]'
                                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeAggregationAuthorizationsResponse

=head1 ATTRIBUTES


=head2 AggregationAuthorizations => ArrayRef[Config_AggregationAuthorization]

Returns a list of authorizations granted to various aggregator accounts
and regions.


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;