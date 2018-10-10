
package Paws::IoT1ClickDevices::UnclaimDevice;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deviceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnclaimDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/devices/{deviceId}/unclaim');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickDevices::UnclaimDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::UnclaimDevice - Arguments for method UnclaimDevice on L<Paws::IoT1ClickDevices>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnclaimDevice on the
L<AWS IoT 1-Click Devices Service|Paws::IoT1ClickDevices> service. Use the attributes of this class
as arguments to method UnclaimDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnclaimDevice.

=head1 SYNOPSIS

    my $devices.iot1click = Paws->service('IoT1ClickDevices');
    my $UnclaimDeviceResponse = $devices . iot1click->UnclaimDevice(
      DeviceId => 'My__string',

    );

    # Results:
    my $State = $UnclaimDeviceResponse->State;

    # Returns a L<Paws::IoT1ClickDevices::UnclaimDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devices.iot1click/UnclaimDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The unique identifier of the device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnclaimDevice in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

