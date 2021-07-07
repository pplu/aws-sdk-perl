
package Paws::IoTEventsData::DescribeAlarmResponse;
  use Moose;
  has Alarm => (is => 'ro', isa => 'Paws::IoTEventsData::Alarm', traits => ['NameInRequest'], request_name => 'alarm');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::DescribeAlarmResponse

=head1 ATTRIBUTES


=head2 Alarm => L<Paws::IoTEventsData::Alarm>

Contains information about an alarm.


=head2 _request_id => Str


=cut

