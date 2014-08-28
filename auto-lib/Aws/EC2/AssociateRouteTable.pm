
package Aws::EC2::AssociateRouteTable {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateRouteTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::AssociateRouteTableResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
