
package Paws::StorageGateway::DescribeMaintenanceStartTimeOutput;
  use Moose;
  has DayOfWeek => (is => 'ro', isa => 'Int');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has HourOfDay => (is => 'ro', isa => 'Int');
  has MinuteOfHour => (is => 'ro', isa => 'Int');
  has Timezone => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeMaintenanceStartTimeOutput

=head1 ATTRIBUTES


=head2 DayOfWeek => Int

An ordinal number between 0 and 6 that represents the day of the week,
where 0 represents Sunday and 6 represents Saturday. The day of week is
in the time zone of the gateway.


=head2 GatewayARN => Str




=head2 HourOfDay => Int

The hour component of the maintenance start time represented as I<hh>,
where I<hh> is the hour (0 to 23). The hour of the day is in the time
zone of the gateway.


=head2 MinuteOfHour => Int

The minute component of the maintenance start time represented as
I<mm>, where I<mm> is the minute (0 to 59). The minute of the hour is
in the time zone of the gateway.


=head2 Timezone => Str




=head2 _request_id => Str


=cut

1;