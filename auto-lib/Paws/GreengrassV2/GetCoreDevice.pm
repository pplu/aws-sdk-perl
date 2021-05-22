
package Paws::GreengrassV2::GetCoreDevice;
  use Moose;
  has CoreDeviceThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'coreDeviceThingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCoreDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/coreDevices/{coreDeviceThingName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::GetCoreDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::GetCoreDevice - Arguments for method GetCoreDevice on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCoreDevice on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method GetCoreDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCoreDevice.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $GetCoreDeviceResponse = $greengrass->GetCoreDevice(
      CoreDeviceThingName => 'MyCoreDeviceThingName',

    );

    # Results:
    my $Architecture        = $GetCoreDeviceResponse->Architecture;
    my $CoreDeviceThingName = $GetCoreDeviceResponse->CoreDeviceThingName;
    my $CoreVersion         = $GetCoreDeviceResponse->CoreVersion;
    my $LastStatusUpdateTimestamp =
      $GetCoreDeviceResponse->LastStatusUpdateTimestamp;
    my $Platform = $GetCoreDeviceResponse->Platform;
    my $Status   = $GetCoreDeviceResponse->Status;
    my $Tags     = $GetCoreDeviceResponse->Tags;

    # Returns a L<Paws::GreengrassV2::GetCoreDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetCoreDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CoreDeviceThingName => Str

The name of the core device. This is also the name of the AWS IoT
thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCoreDevice in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

