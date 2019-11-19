# Generated from default/object.tt
package Paws::GroundStation::UplinkSpectrumConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw/GroundStation_Frequency/;
  has CenterFrequency => (is => 'ro', isa => GroundStation_Frequency, required => 1);
  has Polarization => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Polarization' => {
                                   'type' => 'Str'
                                 },
               'CenterFrequency' => {
                                      'type' => 'GroundStation_Frequency',
                                      'class' => 'Paws::GroundStation::Frequency'
                                    }
             },
  'IsRequired' => {
                    'CenterFrequency' => 1
                  },
  'NameInRequest' => {
                       'Polarization' => 'polarization',
                       'CenterFrequency' => 'centerFrequency'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::UplinkSpectrumConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::UplinkSpectrumConfig object:

  $service_obj->Method(Att1 => { CenterFrequency => $value, ..., Polarization => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::UplinkSpectrumConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CenterFrequency

=head1 DESCRIPTION

Information about the uplink spectral C<Config>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CenterFrequency => GroundStation_Frequency

  Center frequency of an uplink spectral C<Config>.


=head2 Polarization => Str

  Polarization of an uplink spectral C<Config>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

