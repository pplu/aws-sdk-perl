
package Paws::CodeGuruProfiler::BatchGetFrameMetricDataResponse;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime', required => 1);
  has EndTimes => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruProfiler::TimestampStructure]', traits => ['NameInRequest'], request_name => 'endTimes', required => 1);
  has FrameMetricData => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruProfiler::FrameMetricDatum]', traits => ['NameInRequest'], request_name => 'frameMetricData', required => 1);
  has Resolution => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resolution', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime', required => 1);
  has UnprocessedEndTimes => (is => 'ro', isa => 'Paws::CodeGuruProfiler::UnprocessedEndTimeMap', traits => ['NameInRequest'], request_name => 'unprocessedEndTimes', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::BatchGetFrameMetricDataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end time of the time period for the returned time series values.
This is specified using the ISO 8601 format. For example,
2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
1:15:02 PM UTC.


=head2 B<REQUIRED> EndTimes => ArrayRef[L<Paws::CodeGuruProfiler::TimestampStructure>]

List of instances, or time steps, in the time series. For example, if
the C<period> is one day (C<PT24H)>), and the C<resolution> is five
minutes (C<PT5M>), then there are 288 C<endTimes> in the list that are
each five minutes appart.


=head2 B<REQUIRED> FrameMetricData => ArrayRef[L<Paws::CodeGuruProfiler::FrameMetricDatum>]

Details of the metrics to request a time series of values. The metric
includes the name of the frame, the aggregation type to calculate the
metric value for the frame, and the thread states to use to get the
count for the metric value of the frame.


=head2 B<REQUIRED> Resolution => Str

Resolution or granularity of the profile data used to generate the time
series. This is the value used to jump through time steps in a time
series. There are 3 valid values.

=over

=item *

C<P1D> E<mdash> 1 day

=item *

C<PT1H> E<mdash> 1 hour

=item *

C<PT5M> E<mdash> 5 minutes

=back


Valid values are: C<"PT5M">, C<"PT1H">, C<"P1D">
=head2 B<REQUIRED> StartTime => Str

The start time of the time period for the returned time series values.
This is specified using the ISO 8601 format. For example,
2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
1:15:02 PM UTC.


=head2 B<REQUIRED> UnprocessedEndTimes => L<Paws::CodeGuruProfiler::UnprocessedEndTimeMap>

List of instances which remained unprocessed. This will create a
missing time step in the list of end times.


=head2 _request_id => Str


=cut

