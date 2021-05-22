
package Paws::MediaLive::DescribeInputDevice;
  use Moose;
  has InputDeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'inputDeviceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInputDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputDevices/{inputDeviceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::DescribeInputDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeInputDevice - Arguments for method DescribeInputDevice on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInputDevice on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DescribeInputDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInputDevice.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $DescribeInputDeviceResponse = $medialive->DescribeInputDevice(
      InputDeviceId => 'My__string',

    );

    # Results:
    my $Arn             = $DescribeInputDeviceResponse->Arn;
    my $ConnectionState = $DescribeInputDeviceResponse->ConnectionState;
    my $DeviceSettingsSyncState =
      $DescribeInputDeviceResponse->DeviceSettingsSyncState;
    my $DeviceUpdateStatus = $DescribeInputDeviceResponse->DeviceUpdateStatus;
    my $HdDeviceSettings   = $DescribeInputDeviceResponse->HdDeviceSettings;
    my $Id                 = $DescribeInputDeviceResponse->Id;
    my $MacAddress         = $DescribeInputDeviceResponse->MacAddress;
    my $Name               = $DescribeInputDeviceResponse->Name;
    my $NetworkSettings    = $DescribeInputDeviceResponse->NetworkSettings;
    my $SerialNumber       = $DescribeInputDeviceResponse->SerialNumber;
    my $Type               = $DescribeInputDeviceResponse->Type;
    my $UhdDeviceSettings  = $DescribeInputDeviceResponse->UhdDeviceSettings;

    # Returns a L<Paws::MediaLive::DescribeInputDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DescribeInputDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputDeviceId => Str

The unique ID of this input device. For example, hd-123456789abcdef.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInputDevice in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

