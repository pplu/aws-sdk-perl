# Generated from callresult_class.tt

package Paws::CloudWatch::DescribeAlarmsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatch::Types qw/CloudWatch_MetricAlarm/;
  has MetricAlarms => (is => 'ro', isa => ArrayRef[CloudWatch_MetricAlarm]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
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

Paws::CloudWatch::DescribeAlarmsOutput

=head1 ATTRIBUTES


=head2 MetricAlarms => ArrayRef[CloudWatch_MetricAlarm]

The information for the specified alarms.


=head2 NextToken => Str

The token that marks the start of the next batch of returned results.


=head2 _request_id => Str


=cut

