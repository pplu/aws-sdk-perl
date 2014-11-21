package Aws::EC2::Route {
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'destinationCidrBlock');
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'gatewayId');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceOwnerId');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has Origin => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'origin');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcPeeringConnectionId');
}
1;
