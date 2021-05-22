
package Paws::SageMaker::DescribeDevice;
  use Moose;
  has DeviceFleetName => (is => 'ro', isa => 'Str', required => 1);
  has DeviceName => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeDeviceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeDevice - Arguments for method DescribeDevice on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDevice on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDevice.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeDeviceResponse = $api . sagemaker->DescribeDevice(
      DeviceFleetName => 'MyEntityName',
      DeviceName      => 'MyEntityName',
      NextToken       => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Description      = $DescribeDeviceResponse->Description;
    my $DeviceArn        = $DescribeDeviceResponse->DeviceArn;
    my $DeviceFleetName  = $DescribeDeviceResponse->DeviceFleetName;
    my $DeviceName       = $DescribeDeviceResponse->DeviceName;
    my $IotThingName     = $DescribeDeviceResponse->IotThingName;
    my $LatestHeartbeat  = $DescribeDeviceResponse->LatestHeartbeat;
    my $MaxModels        = $DescribeDeviceResponse->MaxModels;
    my $Models           = $DescribeDeviceResponse->Models;
    my $NextToken        = $DescribeDeviceResponse->NextToken;
    my $RegistrationTime = $DescribeDeviceResponse->RegistrationTime;

    # Returns a L<Paws::SageMaker::DescribeDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceFleetName => Str

The name of the fleet the devices belong to.



=head2 B<REQUIRED> DeviceName => Str

The unique ID of the device.



=head2 NextToken => Str

Next token of device description.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDevice in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

