# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::DescribeMetricFiltersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_MetricFilter/;
  has MetricFilters => (is => 'ro', isa => ArrayRef[CloudWatchLogs_MetricFilter]);
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
               'MetricFilters' => {
                                    'class' => 'Paws::CloudWatchLogs::MetricFilter',
                                    'type' => 'ArrayRef[CloudWatchLogs_MetricFilter]'
                                  }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'MetricFilters' => 'metricFilters'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeMetricFiltersResponse

=head1 ATTRIBUTES


=head2 MetricFilters => ArrayRef[CloudWatchLogs_MetricFilter]

The metric filters.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;