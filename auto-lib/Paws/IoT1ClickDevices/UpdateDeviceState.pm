
package Paws::IoT1ClickDevices::UpdateDeviceState;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deviceId', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDeviceState');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/devices/{deviceId}/state');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickDevices::UpdateDeviceStateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::UpdateDeviceState - Arguments for method UpdateDeviceState on L<Paws::IoT1ClickDevices>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDeviceState on the 
L<AWS IoT 1-Click Devices Service|Paws::IoT1ClickDevices> service. Use the attributes of this class
as arguments to method UpdateDeviceState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDeviceState.

As an example:

  $service_obj->UpdateDeviceState(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>
=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The unique identifier of the device.



=head2 Enabled => Bool

If true, the device is enabled. If false, the device is disabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeviceState in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

