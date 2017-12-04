
package Paws::Lightsail::GetLoadBalancerMetricDataResult;
  use Moose;
  has MetricData => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::MetricDatapoint]', traits => ['NameInRequest'], request_name => 'metricData' );
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetLoadBalancerMetricDataResult

=head1 ATTRIBUTES


=head2 MetricData => ArrayRef[L<Paws::Lightsail::MetricDatapoint>]

An array of metric datapoint objects.


=head2 MetricName => Str

The metric about which you are receiving information. Valid values are
listed below.

Valid values are: C<"ClientTLSNegotiationErrorCount">, C<"HealthyHostCount">, C<"UnhealthyHostCount">, C<"HTTPCode_LB_4XX_Count">, C<"HTTPCode_LB_5XX_Count">, C<"HTTPCode_Instance_2XX_Count">, C<"HTTPCode_Instance_3XX_Count">, C<"HTTPCode_Instance_4XX_Count">, C<"HTTPCode_Instance_5XX_Count">, C<"InstanceResponseTime">, C<"RejectedConnectionCount">, C<"RequestCount">
=head2 _request_id => Str


=cut

1;