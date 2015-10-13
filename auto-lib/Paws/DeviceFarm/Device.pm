package Paws::DeviceFarm::Device;
  use Moose;
  has arn => (is => 'ro', isa => 'Str');
  has carrier => (is => 'ro', isa => 'Str');
  has cpu => (is => 'ro', isa => 'Paws::DeviceFarm::CPU');
  has formFactor => (is => 'ro', isa => 'Str');
  has heapSize => (is => 'ro', isa => 'Int');
  has image => (is => 'ro', isa => 'Str');
  has manufacturer => (is => 'ro', isa => 'Str');
  has memory => (is => 'ro', isa => 'Int');
  has model => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
  has os => (is => 'ro', isa => 'Str');
  has platform => (is => 'ro', isa => 'Str');
  has radio => (is => 'ro', isa => 'Str');
  has resolution => (is => 'ro', isa => 'Paws::DeviceFarm::Resolution');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Device

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Device object:

  $service_obj->Method(Att1 => { arn => $value, ..., resolution => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Device object:

  $result = $service_obj->Method(...);
  $result->Att1->arn

=head1 DESCRIPTION

Represents a device type that an app is tested against.

=head1 ATTRIBUTES

=head2 arn => Str

  The device's ARN.

=head2 carrier => Str

  The device's carrier.

=head2 cpu => L<Paws::DeviceFarm::CPU>

  Information about the device's CPU.

=head2 formFactor => Str

  The device's form factor.

Allowed values include:

=over

=item *

PHONE: The phone form factor.

=item *

TABLET: The tablet form factor.

=back


=head2 heapSize => Int

  The device's heap size, expressed in bytes.

=head2 image => Str

  The device's image name.

=head2 manufacturer => Str

  The device's manufacturer name.

=head2 memory => Int

  The device's total memory size, expressed in bytes.

=head2 model => Str

  The device's model name.

=head2 name => Str

  The device's display name.

=head2 os => Str

  The device's operating system type.

=head2 platform => Str

  The device's platform.

Allowed values include:

=over

=item *

ANDROID: The Android platform.

=item *

IOS: The iOS platform.

=back


=head2 radio => Str

  The device's radio.

=head2 resolution => L<Paws::DeviceFarm::Resolution>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

