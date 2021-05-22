
package Paws::NetworkManager::UpdateDevice;
  use Moose;
  has AWSLocation => (is => 'ro', isa => 'Paws::NetworkManager::AWSLocation');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deviceId', required => 1);
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has Location => (is => 'ro', isa => 'Paws::NetworkManager::Location');
  has Model => (is => 'ro', isa => 'Str');
  has SerialNumber => (is => 'ro', isa => 'Str');
  has SiteId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Vendor => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/devices/{deviceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::UpdateDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateDevice - Arguments for method UpdateDevice on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDevice on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method UpdateDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDevice.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $UpdateDeviceResponse = $networkmanager->UpdateDevice(
      DeviceId        => 'MyString',
      GlobalNetworkId => 'MyString',
      AWSLocation     => {
        SubnetArn => 'MyString',
        Zone      => 'MyString',
      },    # OPTIONAL
      Description => 'MyString',    # OPTIONAL
      Location    => {
        Address   => 'MyString',
        Latitude  => 'MyString',
        Longitude => 'MyString',
      },                            # OPTIONAL
      Model        => 'MyString',   # OPTIONAL
      SerialNumber => 'MyString',   # OPTIONAL
      SiteId       => 'MyString',   # OPTIONAL
      Type         => 'MyString',   # OPTIONAL
      Vendor       => 'MyString',   # OPTIONAL
    );

    # Results:
    my $Device = $UpdateDeviceResponse->Device;

    # Returns a L<Paws::NetworkManager::UpdateDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/UpdateDevice>

=head1 ATTRIBUTES


=head2 AWSLocation => L<Paws::NetworkManager::AWSLocation>

The AWS location of the device.



=head2 Description => Str

A description of the device.

Length Constraints: Maximum length of 256 characters.



=head2 B<REQUIRED> DeviceId => Str

The ID of the device.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 Location => L<Paws::NetworkManager::Location>





=head2 Model => Str

The model of the device.

Length Constraints: Maximum length of 128 characters.



=head2 SerialNumber => Str

The serial number of the device.

Length Constraints: Maximum length of 128 characters.



=head2 SiteId => Str

The ID of the site.



=head2 Type => Str

The type of the device.



=head2 Vendor => Str

The vendor of the device.

Length Constraints: Maximum length of 128 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDevice in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

