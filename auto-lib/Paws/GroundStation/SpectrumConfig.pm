# Generated from default/object.tt
package Paws::GroundStation::SpectrumConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw/GroundStation_Frequency GroundStation_FrequencyBandwidth/;
  has Bandwidth => (is => 'ro', isa => GroundStation_FrequencyBandwidth, required => 1);
  has CenterFrequency => (is => 'ro', isa => GroundStation_Frequency, required => 1);
  has Polarization => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Bandwidth' => 'bandwidth',
                       'CenterFrequency' => 'centerFrequency',
                       'Polarization' => 'polarization'
                     },
  'IsRequired' => {
                    'Bandwidth' => 1,
                    'CenterFrequency' => 1
                  },
  'types' => {
               'CenterFrequency' => {
                                      'type' => 'GroundStation_Frequency',
                                      'class' => 'Paws::GroundStation::Frequency'
                                    },
               'Bandwidth' => {
                                'class' => 'Paws::GroundStation::FrequencyBandwidth',
                                'type' => 'GroundStation_FrequencyBandwidth'
                              },
               'Polarization' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::SpectrumConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::SpectrumConfig object:

  $service_obj->Method(Att1 => { Bandwidth => $value, ..., Polarization => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::SpectrumConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Bandwidth

=head1 DESCRIPTION

Object that describes a spectral C<Config>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bandwidth => GroundStation_FrequencyBandwidth

  Bandwidth of a spectral C<Config>.


=head2 B<REQUIRED> CenterFrequency => GroundStation_Frequency

  Center frequency of a spectral C<Config>.


=head2 Polarization => Str

  Polarization of a spectral C<Config>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

