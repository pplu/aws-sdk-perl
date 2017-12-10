package Paws::DeviceFarm::Radios;
  use Moose;
  has Bluetooth => (is => 'ro', isa => 'Bool', request_name => 'bluetooth', traits => ['NameInRequest']);
  has Gps => (is => 'ro', isa => 'Bool', request_name => 'gps', traits => ['NameInRequest']);
  has Nfc => (is => 'ro', isa => 'Bool', request_name => 'nfc', traits => ['NameInRequest']);
  has Wifi => (is => 'ro', isa => 'Bool', request_name => 'wifi', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Radios

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Radios object:

  $service_obj->Method(Att1 => { Bluetooth => $value, ..., Wifi => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Radios object:

  $result = $service_obj->Method(...);
  $result->Att1->Bluetooth

=head1 DESCRIPTION

Represents the set of radios and their states on a device. Examples of
radios include Wi-Fi, GPS, Bluetooth, and NFC.

=head1 ATTRIBUTES


=head2 Bluetooth => Bool

  True if Bluetooth is enabled at the beginning of the test; otherwise,
false.


=head2 Gps => Bool

  True if GPS is enabled at the beginning of the test; otherwise, false.


=head2 Nfc => Bool

  True if NFC is enabled at the beginning of the test; otherwise, false.


=head2 Wifi => Bool

  True if Wi-Fi is enabled at the beginning of the test; otherwise,
false.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

