# Generated by default/object.tt
package Paws::Pinpoint::WriteJourneyRequest;
  use Moose;
  has Activities => (is => 'ro', isa => 'Paws::Pinpoint::MapOfActivity');
  has CreationDate => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Limits => (is => 'ro', isa => 'Paws::Pinpoint::JourneyLimits');
  has LocalTime => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has QuietTime => (is => 'ro', isa => 'Paws::Pinpoint::QuietTime');
  has RefreshFrequency => (is => 'ro', isa => 'Str');
  has RefreshOnSegmentUpdate => (is => 'ro', isa => 'Bool');
  has Schedule => (is => 'ro', isa => 'Paws::Pinpoint::JourneySchedule');
  has StartActivity => (is => 'ro', isa => 'Str');
  has StartCondition => (is => 'ro', isa => 'Paws::Pinpoint::StartCondition');
  has State => (is => 'ro', isa => 'Str');
  has WaitForQuietTime => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::WriteJourneyRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::WriteJourneyRequest object:

  $service_obj->Method(Att1 => { Activities => $value, ..., WaitForQuietTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::WriteJourneyRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Activities

=head1 DESCRIPTION

Specifies the configuration and other settings for a journey.

=head1 ATTRIBUTES


=head2 Activities => L<Paws::Pinpoint::MapOfActivity>

A map that contains a set of Activity objects, one object for each
activity in the journey. For each Activity object, the key is the
unique identifier (string) for an activity and the value is the
settings for the activity. An activity identifier can contain a maximum
of 100 characters. The characters must be alphanumeric characters.


=head2 CreationDate => Str

The date, in ISO 8601 format, when the journey was created.


=head2 LastModifiedDate => Str

The date, in ISO 8601 format, when the journey was last modified.


=head2 Limits => L<Paws::Pinpoint::JourneyLimits>

The messaging and entry limits for the journey.


=head2 LocalTime => Bool

Specifies whether the journey's scheduled start and end times use each
participant's local time. To base the schedule on each participant's
local time, set this value to true.


=head2 B<REQUIRED> Name => Str

The name of the journey. A journey name can contain a maximum of 150
characters. The characters can be alphanumeric characters or symbols,
such as underscores (_) or hyphens (-). A journey name can't contain
any spaces.


=head2 QuietTime => L<Paws::Pinpoint::QuietTime>

The quiet time settings for the journey. Quiet time is a specific time
range when a journey doesn't send messages to participants, if all the
following conditions are met:

=over

=item *

The EndpointDemographic.Timezone property of the endpoint for the
participant is set to a valid value.

=item *

The current time in the participant's time zone is later than or equal
to the time specified by the QuietTime.Start property for the journey.

=item *

The current time in the participant's time zone is earlier than or
equal to the time specified by the QuietTime.End property for the
journey.

=back

If any of the preceding conditions isn't met, the participant will
receive messages from the journey, even if quiet time is enabled.


=head2 RefreshFrequency => Str

The frequency with which Amazon Pinpoint evaluates segment and event
data for the journey, as a duration in ISO 8601 format.


=head2 RefreshOnSegmentUpdate => Bool

Specifies whether a journey should be refreshed on segment update.


=head2 Schedule => L<Paws::Pinpoint::JourneySchedule>

The schedule settings for the journey.


=head2 StartActivity => Str

The unique identifier for the first activity in the journey. The
identifier for this activity can contain a maximum of 128 characters.
The characters must be alphanumeric characters.


=head2 StartCondition => L<Paws::Pinpoint::StartCondition>

The segment that defines which users are participants in the journey.


=head2 State => Str

The status of the journey. Valid values are:

=over

=item *

DRAFT - Saves the journey and doesn't publish it.

=item *

ACTIVE - Saves and publishes the journey. Depending on the journey's
schedule, the journey starts running immediately or at the scheduled
start time. If a journey's status is ACTIVE, you can't add, change, or
remove activities from it.

=back

PAUSED, CANCELLED, COMPLETED, and CLOSED states are not supported in
requests to create or update a journey. To cancel, pause, or resume a
journey, use the

Journey State resource.


=head2 WaitForQuietTime => Bool

Specifies whether endpoints in quiet hours should enter a wait till the
end of their quiet hours.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

