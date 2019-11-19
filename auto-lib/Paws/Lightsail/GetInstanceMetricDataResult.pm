# Generated from json/callresult_class.tt

package Paws::Lightsail::GetInstanceMetricDataResult;
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
                                 'type' => 'ArrayRef[Lightsail_MetricDatapoint]',
                                 'class' => 'Paws::Lightsail::MetricDatapoint'
                               },
               'MetricName' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'MetricName' => 'metricName',
                       'MetricData' => 'metricData'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceMetricDataResult

=head1 ATTRIBUTES


=head2 MetricData => ArrayRef[Lightsail_MetricDatapoint]

An array of key-value pairs containing information about the results of
your get instance metric data request.


=head2 MetricName => Str

The metric name to return data for.

Valid values are: C<"CPUUtilization">, C<"NetworkIn">, C<"NetworkOut">, C<"StatusCheckFailed">, C<"StatusCheckFailed_Instance">, C<"StatusCheckFailed_System">
=head2 _request_id => Str


=cut

1;