
package Aws::EC2::DescribeReservedInstancesListings {
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]');
  has ReservedInstancesId => (is => 'ro', isa => 'Str');
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesListings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeReservedInstancesListingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
