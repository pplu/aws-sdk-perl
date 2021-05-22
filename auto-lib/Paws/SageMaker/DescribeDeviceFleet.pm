
package Paws::SageMaker::DescribeDeviceFleet;
  use Moose;
  has DeviceFleetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDeviceFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeDeviceFleetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeDeviceFleet - Arguments for method DescribeDeviceFleet on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDeviceFleet on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeDeviceFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDeviceFleet.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeDeviceFleetResponse = $api . sagemaker->DescribeDeviceFleet(
      DeviceFleetName => 'MyEntityName',

    );

    # Results:
    my $CreationTime     = $DescribeDeviceFleetResponse->CreationTime;
    my $Description      = $DescribeDeviceFleetResponse->Description;
    my $DeviceFleetArn   = $DescribeDeviceFleetResponse->DeviceFleetArn;
    my $DeviceFleetName  = $DescribeDeviceFleetResponse->DeviceFleetName;
    my $IotRoleAlias     = $DescribeDeviceFleetResponse->IotRoleAlias;
    my $LastModifiedTime = $DescribeDeviceFleetResponse->LastModifiedTime;
    my $OutputConfig     = $DescribeDeviceFleetResponse->OutputConfig;
    my $RoleArn          = $DescribeDeviceFleetResponse->RoleArn;

    # Returns a L<Paws::SageMaker::DescribeDeviceFleetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeDeviceFleet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceFleetName => Str

The name of the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDeviceFleet in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

