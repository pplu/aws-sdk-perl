
package Paws::XRay::GetTimeSeriesServiceStatisticsResult;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::XRay::Types qw/XRay_TimeSeriesServiceStatistics/;
  has ContainsOldGroupVersions => (is => 'ro', isa => Bool);
  has NextToken => (is => 'ro', isa => Str);
  has TimeSeriesServiceStatistics => (is => 'ro', isa => ArrayRef[XRay_TimeSeriesServiceStatistics]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimeSeriesServiceStatistics' => {
                                                  'class' => 'Paws::XRay::TimeSeriesServiceStatistics',
                                                  'type' => 'ArrayRef[XRay_TimeSeriesServiceStatistics]'
                                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ContainsOldGroupVersions' => {
                                               'type' => 'Bool'
                                             },
               '_request_id' => {
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

Paws::XRay::GetTimeSeriesServiceStatisticsResult

=head1 ATTRIBUTES


=head2 ContainsOldGroupVersions => Bool

A flag indicating whether or not a group's filter expression has been
consistent, or if a returned aggregation may show statistics from an
older version of the group's filter expression.


=head2 NextToken => Str

Pagination token. Not used.


=head2 TimeSeriesServiceStatistics => ArrayRef[XRay_TimeSeriesServiceStatistics]

The collection of statistics.


=head2 _request_id => Str


=cut

