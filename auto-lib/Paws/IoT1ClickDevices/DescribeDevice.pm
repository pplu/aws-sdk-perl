
package Paws::IoT1ClickDevices::DescribeDevice;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deviceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/devices/{deviceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickDevices::DescribeDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::DescribeDevice - Arguments for method DescribeDevice on L<Paws::IoT1ClickDevices>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDevice on the
L<AWS IoT 1-Click Devices Service|Paws::IoT1ClickDevices> service. Use the attributes of this class
as arguments to method DescribeDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDevice.

=head1 SYNOPSIS

    my $devices.iot1click = Paws->service('IoT1ClickDevices');
    my $DescribeDeviceResponse = $devices . iot1click->DescribeDevice(
      DeviceId => 'My__string',

    );

    # Results:
    my $DeviceDescription = $DescribeDeviceResponse->DeviceDescription;

    # Returns a L<Paws::IoT1ClickDevices::DescribeDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devices.iot1click/DescribeDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The unique identifier of the device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDevice in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

