package Paws::GroundStation::AntennaDownlinkConfig;
  use Moose;
  has SpectrumConfig => (is => 'ro', isa => 'Paws::GroundStation::SpectrumConfig', request_name => 'spectrumConfig', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::AntennaDownlinkConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::AntennaDownlinkConfig object:

  $service_obj->Method(Att1 => { SpectrumConfig => $value, ..., SpectrumConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::AntennaDownlinkConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->SpectrumConfig

=head1 DESCRIPTION

Information about how AWS Ground Station should configure an antenna
for downlink during a contact.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SpectrumConfig => L<Paws::GroundStation::SpectrumConfig>

  Object that describes a spectral C<Config>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

