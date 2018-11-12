package Paws::AlexaForBusiness::PSTNDialIn;
  use Moose;
  has CountryCode => (is => 'ro', isa => 'Str', required => 1);
  has OneClickIdDelay => (is => 'ro', isa => 'Str', required => 1);
  has OneClickPinDelay => (is => 'ro', isa => 'Str', required => 1);
  has PhoneNumber => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::PSTNDialIn

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::PSTNDialIn object:

  $service_obj->Method(Att1 => { CountryCode => $value, ..., PhoneNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::PSTNDialIn object:

  $result = $service_obj->Method(...);
  $result->Att1->CountryCode

=head1 DESCRIPTION

The information for public switched telephone network (PSTN)
conferencing.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CountryCode => Str

  The zip code.


=head2 B<REQUIRED> OneClickIdDelay => Str

  The delay duration before Alexa enters the conference ID with dual-tone
multi-frequency (DTMF). Each number on the dial pad corresponds to a
DTMF tone, which is how we send data over the telephone network.


=head2 B<REQUIRED> OneClickPinDelay => Str

  The delay duration before Alexa enters the conference pin with
dual-tone multi-frequency (DTMF). Each number on the dial pad
corresponds to a DTMF tone, which is how we send data over the
telephone network.


=head2 B<REQUIRED> PhoneNumber => Str

  The phone number to call to join the conference.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

