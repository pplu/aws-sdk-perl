
package Paws::IoT1ClickDevices::InitiateDeviceClaim;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deviceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InitiateDeviceClaim');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/devices/{deviceId}/initiate-claim');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickDevices::InitiateDeviceClaimResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::InitiateDeviceClaim - Arguments for method InitiateDeviceClaim on L<Paws::IoT1ClickDevices>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InitiateDeviceClaim on the 
L<AWS IoT 1-Click Devices Service|Paws::IoT1ClickDevices> service. Use the attributes of this class
as arguments to method InitiateDeviceClaim.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InitiateDeviceClaim.

As an example:

  $service_obj->InitiateDeviceClaim(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The unique identifier of the device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InitiateDeviceClaim in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

