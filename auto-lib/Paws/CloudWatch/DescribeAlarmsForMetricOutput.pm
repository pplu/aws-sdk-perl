# Generated from callresult_class.tt

package Paws::CloudWatch::DescribeAlarmsForMetricOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatch::Types qw/CloudWatch_MetricAlarm/;
  has MetricAlarms => (is => 'ro', isa => ArrayRef[CloudWatch_MetricAlarm]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MetricAlarms' => {
                                   'class' => 'Paws::CloudWatch::MetricAlarm',
                                   'type' => 'ArrayRef[CloudWatch_MetricAlarm]'
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

Paws::CloudWatch::DescribeAlarmsForMetricOutput

=head1 ATTRIBUTES


=head2 MetricAlarms => ArrayRef[CloudWatch_MetricAlarm]

The information for each alarm with the specified metric.


=head2 _request_id => Str


=cut

