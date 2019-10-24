# Generated from default/object.tt
package Paws::GroundStation::Frequency;
  use Moo;
  use Types::Standard qw/Str Num/;
  use Paws::GroundStation::Types qw//;
  has Units => (is => 'ro', isa => Str, required => 1);
  has Value => (is => 'ro', isa => Num, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Num'
                          },
               'Units' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'Value' => 'value',
                       'Units' => 'units'
                     },
  'IsRequired' => {
                    'Value' => 1,
                    'Units' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::Frequency

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::Frequency object:

  $service_obj->Method(Att1 => { Units => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::Frequency object:

  $result = $service_obj->Method(...);
  $result->Att1->Units

=head1 DESCRIPTION

Object that describes the frequency.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Units => Str

  Frequency units.


=head2 B<REQUIRED> Value => Num

  Frequency value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

