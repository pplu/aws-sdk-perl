package Paws::NetworkManager::Device;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceArn => (is => 'ro', isa => 'Str');
  has DeviceId => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Paws::NetworkManager::Location');
  has Model => (is => 'ro', isa => 'Str');
  has SerialNumber => (is => 'ro', isa => 'Str');
  has SiteId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');
  has Type => (is => 'ro', isa => 'Str');
  has Vendor => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::Device

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::Device object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., Vendor => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::Device object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Describes a device.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The date and time that the site was created.


=head2 Description => Str

  The description of the device.


=head2 DeviceArn => Str

  The Amazon Resource Name (ARN) of the device.


=head2 DeviceId => Str

  The ID of the device.


=head2 GlobalNetworkId => Str

  The ID of the global network.


=head2 Location => L<Paws::NetworkManager::Location>

  The site location.


=head2 Model => Str

  The device model.


=head2 SerialNumber => Str

  The device serial number.


=head2 SiteId => Str

  The site ID.


=head2 State => Str

  The device state.


=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

  The tags for the device.


=head2 Type => Str

  The device type.


=head2 Vendor => Str

  The device vendor.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

