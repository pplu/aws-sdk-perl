
package Aws::EC2::DescribeReservedInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has OfferingType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'offeringType' );
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReservedInstancesId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeReservedInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;