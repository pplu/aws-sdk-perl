package Aws::EC2::RouteTable {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Associations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::RouteTableAssociation]', traits => ['Unwrapped'], xmlname => 'associationSet');
  has PropagatingVgws => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PropagatingVgw]', traits => ['Unwrapped'], xmlname => 'propagatingVgwSet');
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'routeTableId');
  has Routes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Route]', traits => ['Unwrapped'], xmlname => 'routeSet');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}
1
