
package Aws::EC2::CreateRoute {
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCidrBlock' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayId' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkInterfaceId' );
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeTableId' , required => 1);
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcPeeringConnectionId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;