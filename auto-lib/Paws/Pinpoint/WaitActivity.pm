package Paws::Pinpoint::WaitActivity;
  use Moose;
  has NextActivity => (is => 'ro', isa => 'Str');
  has WaitTime => (is => 'ro', isa => 'Paws::Pinpoint::WaitTime');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::WaitActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::WaitActivity object:

  $service_obj->Method(Att1 => { NextActivity => $value, ..., WaitTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::WaitActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->NextActivity

=head1 DESCRIPTION

Specifies the settings for a wait activity in a journey. This type of
activity waits for a certain amount of time or until a specific date
and time before moving participants to the next activity in a journey.

=head1 ATTRIBUTES


=head2 NextActivity => Str

  The unique identifier for the next activity to perform, after
performing the wait activity.


=head2 WaitTime => L<Paws::Pinpoint::WaitTime>

  The amount of time to wait or the date and time when the activity moves
participants to the next activity in the journey.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

