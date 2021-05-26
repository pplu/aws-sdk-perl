
package Paws::NetworkManager::DeleteDevice;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deviceId', required => 1);
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/devices/{deviceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::DeleteDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DeleteDevice - Arguments for method DeleteDevice on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDevice on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method DeleteDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDevice.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $DeleteDeviceResponse = $networkmanager->DeleteDevice(
      DeviceId        => 'MyString',
      GlobalNetworkId => 'MyString',

    );

    # Results:
    my $Device = $DeleteDeviceResponse->Device;

    # Returns a L<Paws::NetworkManager::DeleteDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/DeleteDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The ID of the device.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDevice in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

