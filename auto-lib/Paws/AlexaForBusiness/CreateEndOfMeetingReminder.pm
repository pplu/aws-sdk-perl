package Paws::AlexaForBusiness::CreateEndOfMeetingReminder;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has ReminderAtMinutes => (is => 'ro', isa => 'ArrayRef[Int]', required => 1);
  has ReminderType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateEndOfMeetingReminder

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::CreateEndOfMeetingReminder object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., ReminderType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::CreateEndOfMeetingReminder object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Creates settings for the end of meeting reminder feature that are
applied to a room profile. The end of meeting reminder enables Alexa to
remind users when a meeting is ending.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

  Whether an end of meeting reminder is enabled or not.


=head2 B<REQUIRED> ReminderAtMinutes => ArrayRef[Int]

  A range of 3 to 15 minutes that determines when the reminder begins.


=head2 B<REQUIRED> ReminderType => Str

  The type of sound that users hear during the end of meeting reminder.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

