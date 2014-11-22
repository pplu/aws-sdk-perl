
package Paws::EC2::AssociateRouteTable {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeTableId' , required => 1);
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subnetId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateRouteTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AssociateRouteTableResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;