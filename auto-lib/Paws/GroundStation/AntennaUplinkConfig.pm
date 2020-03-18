package Paws::GroundStation::AntennaUplinkConfig;
  use Moose;
  has SpectrumConfig => (is => 'ro', isa => 'Paws::GroundStation::UplinkSpectrumConfig', request_name => 'spectrumConfig', traits => ['NameInRequest'], required => 1);
  has TargetEirp => (is => 'ro', isa => 'Paws::GroundStation::Eirp', request_name => 'targetEirp', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::AntennaUplinkConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::AntennaUplinkConfig object:

  $service_obj->Method(Att1 => { SpectrumConfig => $value, ..., TargetEirp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::AntennaUplinkConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->SpectrumConfig

=head1 DESCRIPTION

Information about the uplink C<Config> of an antenna.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SpectrumConfig => L<Paws::GroundStation::UplinkSpectrumConfig>

  Information about the uplink spectral C<Config>.


=head2 B<REQUIRED> TargetEirp => L<Paws::GroundStation::Eirp>

  EIRP of the target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

