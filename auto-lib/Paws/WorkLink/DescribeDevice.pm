
package Paws::WorkLink::DescribeDevice;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', required => 1);
  has FleetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeDevice');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkLink::DescribeDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeDevice - Arguments for method DescribeDevice on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDevice on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method DescribeDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDevice.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $DescribeDeviceResponse = $worklink->DescribeDevice(
      DeviceId => 'MyId',
      FleetArn => 'MyFleetArn',

    );

    # Results:
    my $FirstAccessedTime = $DescribeDeviceResponse->FirstAccessedTime;
    my $LastAccessedTime  = $DescribeDeviceResponse->LastAccessedTime;
    my $Manufacturer      = $DescribeDeviceResponse->Manufacturer;
    my $Model             = $DescribeDeviceResponse->Model;
    my $OperatingSystem   = $DescribeDeviceResponse->OperatingSystem;
    my $OperatingSystemVersion =
      $DescribeDeviceResponse->OperatingSystemVersion;
    my $PatchLevel = $DescribeDeviceResponse->PatchLevel;
    my $Status     = $DescribeDeviceResponse->Status;
    my $Username   = $DescribeDeviceResponse->Username;

    # Returns a L<Paws::WorkLink::DescribeDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/DescribeDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

A unique identifier for a registered user's device.



=head2 B<REQUIRED> FleetArn => Str

The ARN of the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDevice in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

