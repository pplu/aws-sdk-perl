package Aws::EC2::RouteTableAssociation {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Main => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'main');
  has RouteTableAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'routeTableAssociationId');
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'routeTableId');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
}
1
