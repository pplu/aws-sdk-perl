package Paws::EC2::PciId;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str');
  has SubsystemId => (is => 'ro', isa => 'Str');
  has SubsystemVendorId => (is => 'ro', isa => 'Str');
  has VendorId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PciId

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PciId object:

  $service_obj->Method(Att1 => { DeviceId => $value, ..., VendorId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PciId object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DeviceId => Str

  The ID of the device.


=head2 SubsystemId => Str

  The ID of the subsystem.


=head2 SubsystemVendorId => Str

  The ID of the vendor for the subsystem.


=head2 VendorId => Str

  The ID of the vendor.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
