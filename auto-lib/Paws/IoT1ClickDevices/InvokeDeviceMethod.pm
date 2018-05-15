
package Paws::IoT1ClickDevices::InvokeDeviceMethod;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deviceId', required => 1);
  has DeviceMethod => (is => 'ro', isa => 'Paws::IoT1ClickDevices::DeviceMethod', traits => ['NameInRequest'], request_name => 'deviceMethod');
  has DeviceMethodParameters => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceMethodParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeDeviceMethod');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/devices/{deviceId}/methods');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickDevices::InvokeDeviceMethodResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::InvokeDeviceMethod - Arguments for method InvokeDeviceMethod on L<Paws::IoT1ClickDevices>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeDeviceMethod on the 
L<AWS IoT 1-Click Devices Service|Paws::IoT1ClickDevices> service. Use the attributes of this class
as arguments to method InvokeDeviceMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeDeviceMethod.

As an example:

  $service_obj->InvokeDeviceMethod(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The unique identifier of the device.



=head2 DeviceMethod => L<Paws::IoT1ClickDevices::DeviceMethod>

The device method to invoke.



=head2 DeviceMethodParameters => Str

A JSON encoded string containing the device method request parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeDeviceMethod in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

