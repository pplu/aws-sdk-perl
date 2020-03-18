package Paws::AlexaForBusiness::UpdateInstantBooking;
  use Moose;
  has DurationInMinutes => (is => 'ro', isa => 'Int');
  has Enabled => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateInstantBooking

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::UpdateInstantBooking object:

  $service_obj->Method(Att1 => { DurationInMinutes => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::UpdateInstantBooking object:

  $result = $service_obj->Method(...);
  $result->Att1->DurationInMinutes

=head1 DESCRIPTION

Updates settings for the instant booking feature that are applied to a
room profile. If instant booking is enabled, Alexa automatically
reserves a room if it is free when a user joins a meeting with Alexa.

=head1 ATTRIBUTES


=head2 DurationInMinutes => Int

  Duration between 15 and 240 minutes at increments of 15 that determines
how long to book an available room when a meeting is started with
Alexa.


=head2 Enabled => Bool

  Whether instant booking is enabled or not.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

