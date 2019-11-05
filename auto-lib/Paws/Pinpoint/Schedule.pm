package Paws::Pinpoint::Schedule;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has EventFilter => (is => 'ro', isa => 'Paws::Pinpoint::CampaignEventFilter');
  has Frequency => (is => 'ro', isa => 'Str');
  has IsLocalTime => (is => 'ro', isa => 'Bool');
  has QuietTime => (is => 'ro', isa => 'Paws::Pinpoint::QuietTime');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has Timezone => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::Schedule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::Schedule object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., Timezone => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::Schedule object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Specifies the schedule settings for a campaign.

=head1 ATTRIBUTES


=head2 EndTime => Str

  The scheduled time, in ISO 8601 format, for the campaign to end.


=head2 EventFilter => L<Paws::Pinpoint::CampaignEventFilter>

  The type of event that causes the campaign to be sent, if the value of
the Frequency property is EVENT.


=head2 Frequency => Str

  Specifies how often the campaign is sent or whether the campaign is
sent in response to a specific event.


=head2 IsLocalTime => Bool

  Specifies whether the start and end times for the campaign schedule use
each recipient's local time. To base the schedule on each recipient's
local time, set this value to true.


=head2 QuietTime => L<Paws::Pinpoint::QuietTime>

  The default quiet time for the campaign. Quiet time is a specific time
range when a campaign doesn't send messages to endpoints, if all the
following conditions are met:

=over

=item *

The EndpointDemographic.Timezone property of the endpoint is set to a
valid value.

=item *

The current time in the endpoint's time zone is later than or equal to
the time specified by the QuietTime.Start property for the campaign.

=item *

The current time in the endpoint's time zone is earlier than or equal
to the time specified by the QuietTime.End property for the campaign.

=back

If any of the preceding conditions isn't met, the endpoint will receive
messages from the campaign, even if quiet time is enabled.


=head2 B<REQUIRED> StartTime => Str

  The scheduled time, in ISO 8601 format, for the campaign to begin.


=head2 Timezone => Str

  The starting UTC offset for the campaign schedule, if the value of the
IsLocalTime property is true. Valid values are: UTC, UTC+01, UTC+02,
UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05, UTC+05:30, UTC+05:45,
UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+09, UTC+09:30, UTC+10,
UTC+10:30, UTC+11, UTC+12, UTC+13, UTC-02, UTC-03, UTC-04, UTC-05,
UTC-06, UTC-07, UTC-08, UTC-09, UTC-10, and UTC-11.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

