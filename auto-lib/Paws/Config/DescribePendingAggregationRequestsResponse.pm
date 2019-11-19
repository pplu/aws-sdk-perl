# Generated from json/callresult_class.tt

package Paws::Config::DescribePendingAggregationRequestsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_PendingAggregationRequest/;
  has NextToken => (is => 'ro', isa => Str);
  has PendingAggregationRequests => (is => 'ro', isa => ArrayRef[Config_PendingAggregationRequest]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PendingAggregationRequests' => {
                                                 'class' => 'Paws::Config::PendingAggregationRequest',
                                                 'type' => 'ArrayRef[Config_PendingAggregationRequest]'
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

Paws::Config::DescribePendingAggregationRequestsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 PendingAggregationRequests => ArrayRef[Config_PendingAggregationRequest]

Returns a PendingAggregationRequests object.


=head2 _request_id => Str


=cut

1;