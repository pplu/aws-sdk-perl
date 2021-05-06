
package Paws::XRay::GetTimeSeriesServiceStatisticsResult;
  use Moose;
  has ContainsOldGroupVersions => (is => 'ro', isa => 'Bool');
  has NextToken => (is => 'ro', isa => 'Str');
  has TimeSeriesServiceStatistics => (is => 'ro', isa => 'ArrayRef[Paws::XRay::TimeSeriesServiceStatistics]');

  has _request_id => (is => 'ro', isa => 'Str');
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

Pagination token.


=head2 TimeSeriesServiceStatistics => ArrayRef[L<Paws::XRay::TimeSeriesServiceStatistics>]

The collection of statistics.


=head2 _request_id => Str


=cut

