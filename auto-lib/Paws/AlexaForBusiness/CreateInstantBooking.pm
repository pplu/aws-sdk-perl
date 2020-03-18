package Paws::AlexaForBusiness::CreateInstantBooking;
  use Moose;
  has DurationInMinutes => (is => 'ro', isa => 'Int', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateInstantBooking

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::CreateInstantBooking object:

  $service_obj->Method(Att1 => { DurationInMinutes => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::CreateInstantBooking object:

  $result = $service_obj->Method(...);
  $result->Att1->DurationInMinutes

=head1 DESCRIPTION

Creates settings for the instant booking feature that are applied to a
room profile. When users start their meeting with Alexa, Alexa
automatically books the room for the configured duration if the room is
available.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DurationInMinutes => Int

  Duration between 15 and 240 minutes at increments of 15 that determines
how long to book an available room when a meeting is started with
Alexa.


=head2 B<REQUIRED> Enabled => Bool

  Whether instant booking is enabled or not.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

