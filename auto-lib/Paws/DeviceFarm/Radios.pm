package Paws::DeviceFarm::Radios;
  use Moose;
  has bluetooth => (is => 'ro', isa => 'Bool');
  has gps => (is => 'ro', isa => 'Bool');
  has nfc => (is => 'ro', isa => 'Bool');
  has wifi => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Radios

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Radios object:

  $service_obj->Method(Att1 => { bluetooth => $value, ..., wifi => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Radios object:

  $result = $service_obj->Method(...);
  $result->Att1->bluetooth

=head1 ATTRIBUTES

=head2 bluetooth => Bool

  

True if Bluetooth is enabled at the beginning of the test; otherwise,
false.










=head2 gps => Bool

  

True if GPS is enabled at the beginning of the test; otherwise, false.










=head2 nfc => Bool

  

True if NFC is enabled at the beginning of the test; otherwise, false.










=head2 wifi => Bool

  

True if Wi-Fi is enabled at the beginning of the test; otherwise,
false.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

