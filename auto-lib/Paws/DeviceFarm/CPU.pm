# Generated from default/object.tt
package Paws::DeviceFarm::CPU;
  use Moo;
  use Types::Standard qw/Str Num/;
  use Paws::DeviceFarm::Types qw//;
  has Architecture => (is => 'ro', isa => Str);
  has Clock => (is => 'ro', isa => Num);
  has Frequency => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Frequency' => 'frequency',
                       'Architecture' => 'architecture',
                       'Clock' => 'clock'
                     },
  'types' => {
               'Architecture' => {
                                   'type' => 'Str'
                                 },
               'Frequency' => {
                                'type' => 'Str'
                              },
               'Clock' => {
                            'type' => 'Num'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CPU

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::CPU object:

  $service_obj->Method(Att1 => { Architecture => $value, ..., Frequency => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::CPU object:

  $result = $service_obj->Method(...);
  $result->Att1->Architecture

=head1 DESCRIPTION

Represents the amount of CPU that an app is using on a physical device.

Note that this does not represent system-wide CPU usage.

=head1 ATTRIBUTES


=head2 Architecture => Str

  The CPU's architecture, for example x86 or ARM.


=head2 Clock => Num

  The clock speed of the device's CPU, expressed in hertz (Hz). For
example, a 1.2 GHz CPU is expressed as 1200000000.


=head2 Frequency => Str

  The CPU's frequency.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

