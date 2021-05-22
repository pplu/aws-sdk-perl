
package Paws::StorageGateway::DescribeGatewayInformationOutput;
  use Moose;
  has CloudWatchLogGroupARN => (is => 'ro', isa => 'Str');
  has DeprecationDate => (is => 'ro', isa => 'Str');
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
  has Ec2InstanceRegion => (is => 'ro', isa => 'Str');
  has EndpointType => (is => 'ro', isa => 'Str');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has GatewayId => (is => 'ro', isa => 'Str');
  has GatewayName => (is => 'ro', isa => 'Str');
  has GatewayNetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::NetworkInterface]');
  has GatewayState => (is => 'ro', isa => 'Str');
  has GatewayTimezone => (is => 'ro', isa => 'Str');
  has GatewayType => (is => 'ro', isa => 'Str');
  has HostEnvironment => (is => 'ro', isa => 'Str');
  has LastSoftwareUpdate => (is => 'ro', isa => 'Str');
  has NextUpdateAvailabilityDate => (is => 'ro', isa => 'Str');
  has SoftwareUpdatesEndDate => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::Tag]');
  has VPCEndpoint => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeGatewayInformationOutput

=head1 ATTRIBUTES


=head2 CloudWatchLogGroupARN => Str

The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
is used to monitor events in the gateway.


=head2 DeprecationDate => Str

Date after which this gateway will not receive software updates for new
features and bug fixes.


=head2 Ec2InstanceId => Str

The ID of the Amazon EC2 instance that was used to launch the gateway.


=head2 Ec2InstanceRegion => Str

The AWS Region where the Amazon EC2 instance is located.


=head2 EndpointType => Str

The type of endpoint for your gateway.

Valid Values: C<STANDARD> | C<FIPS>


=head2 GatewayARN => Str




=head2 GatewayId => Str

The unique identifier assigned to your gateway during activation. This
ID becomes part of the gateway Amazon Resource Name (ARN), which you
use as input for other operations.


=head2 GatewayName => Str

The name you configured for your gateway.


=head2 GatewayNetworkInterfaces => ArrayRef[L<Paws::StorageGateway::NetworkInterface>]

A NetworkInterface array that contains descriptions of the gateway
network interfaces.


=head2 GatewayState => Str

A value that indicates the operating state of the gateway.


=head2 GatewayTimezone => Str

A value that indicates the time zone configured for the gateway.


=head2 GatewayType => Str

The type of the gateway.


=head2 HostEnvironment => Str

The type of hypervisor environment used by the host.

Valid values are: C<"VMWARE">, C<"HYPER-V">, C<"EC2">, C<"KVM">, C<"OTHER">
=head2 LastSoftwareUpdate => Str

The date on which the last software update was applied to the gateway.
If the gateway has never been updated, this field does not return a
value in the response.


=head2 NextUpdateAvailabilityDate => Str

The date on which an update to the gateway is available. This date is
in the time zone of the gateway. If the gateway is not available for an
update this field is not returned in the response.


=head2 SoftwareUpdatesEndDate => Str

Date after which this gateway will not receive software updates for new
features.


=head2 Tags => ArrayRef[L<Paws::StorageGateway::Tag>]

A list of up to 50 tags assigned to the gateway, sorted alphabetically
by key name. Each tag is a key-value pair. For a gateway with more than
10 tags assigned, you can view all tags using the
C<ListTagsForResource> API operation.


=head2 VPCEndpoint => Str

The configuration settings for the virtual private cloud (VPC) endpoint
for your gateway.


=head2 _request_id => Str


=cut

1;