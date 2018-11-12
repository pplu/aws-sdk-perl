
package Paws::Lightsail::GetRelationalDatabaseMetricDataResult;
  use Moose;
  has MetricData => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::MetricDatapoint]', traits => ['NameInRequest'], request_name => 'metricData' );
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseMetricDataResult

=head1 ATTRIBUTES


=head2 MetricData => ArrayRef[L<Paws::Lightsail::MetricDatapoint>]

An object describing the result of your get relational database metric
data request.


=head2 MetricName => Str

The name of the metric.

Valid values are: C<"CPUUtilization">, C<"DatabaseConnections">, C<"DiskQueueDepth">, C<"FreeStorageSpace">, C<"NetworkReceiveThroughput">, C<"NetworkTransmitThroughput">
=head2 _request_id => Str


=cut

1;