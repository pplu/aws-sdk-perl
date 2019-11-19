
package Paws::Connect::GetMetricDataResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Connect::Types qw/Connect_HistoricalMetricResult/;
  has MetricResults => (is => 'ro', isa => ArrayRef[Connect_HistoricalMetricResult]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MetricResults' => {
                                    'class' => 'Paws::Connect::HistoricalMetricResult',
                                    'type' => 'ArrayRef[Connect_HistoricalMetricResult]'
                                  },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetMetricDataResponse

=head1 ATTRIBUTES


=head2 MetricResults => ArrayRef[Connect_HistoricalMetricResult]

Information about the historical metrics.

If no grouping is specified, a summary of metric data is returned.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.

The token expires after 5 minutes from the time it is created.
Subsequent requests that use the token must use the same request
parameters as the request that generated the token.


=head2 _request_id => Str


=cut

