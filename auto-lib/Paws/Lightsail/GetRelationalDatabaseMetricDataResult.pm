# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRelationalDatabaseMetricDataResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_MetricDatapoint/;
  has MetricData => (is => 'ro', isa => ArrayRef[Lightsail_MetricDatapoint]);
  has MetricName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MetricData' => {
                                 'class' => 'Paws::Lightsail::MetricDatapoint',
                                 'type' => 'ArrayRef[Lightsail_MetricDatapoint]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MetricName' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'MetricData' => 'metricData',
                       'MetricName' => 'metricName'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseMetricDataResult

=head1 ATTRIBUTES


=head2 MetricData => ArrayRef[Lightsail_MetricDatapoint]

An object describing the result of your get relational database metric
data request.


=head2 MetricName => Str

The name of the metric.

Valid values are: C<"CPUUtilization">, C<"DatabaseConnections">, C<"DiskQueueDepth">, C<"FreeStorageSpace">, C<"NetworkReceiveThroughput">, C<"NetworkTransmitThroughput">
=head2 _request_id => Str


=cut

1;