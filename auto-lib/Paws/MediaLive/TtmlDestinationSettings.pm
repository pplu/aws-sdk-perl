package Paws::MediaLive::TtmlDestinationSettings;
  use Moose;
  has StyleControl => (is => 'ro', isa => 'Str', request_name => 'styleControl', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::TtmlDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::TtmlDestinationSettings object:

  $service_obj->Method(Att1 => { StyleControl => $value, ..., StyleControl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::TtmlDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->StyleControl

=head1 DESCRIPTION

Placeholder documentation for TtmlDestinationSettings

=head1 ATTRIBUTES


=head2 StyleControl => Str

  When set to passthrough, passes through style and position information
from a TTML-like input source (TTML, SMPTE-TT, CFF-TT) to the CFF-TT
output or TTML output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

