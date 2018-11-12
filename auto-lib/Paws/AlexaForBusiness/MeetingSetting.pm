package Paws::AlexaForBusiness::MeetingSetting;
  use Moose;
  has RequirePin => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::MeetingSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::MeetingSetting object:

  $service_obj->Method(Att1 => { RequirePin => $value, ..., RequirePin => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::MeetingSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->RequirePin

=head1 DESCRIPTION

The values that indicate whether a pin is always required (YES), never
required (NO), or OPTIONAL.

=over

=item *

If YES, Alexa will always ask for a meeting pin.

=item *

If NO, Alexa will never ask for a meeting pin.

=item *

If OPTIONAL, Alexa will ask if you have a meeting pin and if the
customer responds with yes, it will ask for the meeting pin.

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> RequirePin => Str

  The values that indicate whether the pin is always required.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

