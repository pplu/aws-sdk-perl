package Paws::AlexaForBusiness::UpdateEndOfMeetingReminder;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has ReminderAtMinutes => (is => 'ro', isa => 'ArrayRef[Int]');
  has ReminderType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateEndOfMeetingReminder

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::UpdateEndOfMeetingReminder object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., ReminderType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::UpdateEndOfMeetingReminder object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Settings for the end of meeting reminder feature that are applied to a
room profile. The end of meeting reminder enables Alexa to remind users
when a meeting is ending.

=head1 ATTRIBUTES


=head2 Enabled => Bool

  Whether an end of meeting reminder is enabled or not.


=head2 ReminderAtMinutes => ArrayRef[Int]

  Updates settings for the end of meeting reminder feature that are
applied to a room profile. The end of meeting reminder enables Alexa to
remind users when a meeting is ending.


=head2 ReminderType => Str

  The type of sound that users hear during the end of meeting reminder.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

