
package Paws::EC2::DescribeReservedInstancesListings {
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'filters' );
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reservedInstancesId' );
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reservedInstancesListingId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesListings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeReservedInstancesListingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;