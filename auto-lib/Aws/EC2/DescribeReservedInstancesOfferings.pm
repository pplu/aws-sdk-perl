
package Aws::EC2::DescribeReservedInstancesOfferings {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IncludeMarketplace => (is => 'ro', isa => 'Bool');
  has InstanceTenancy => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has MaxDuration => (is => 'ro', isa => 'Num');
  has MaxInstanceCount => (is => 'ro', isa => 'Int');
  has MaxResults => (is => 'ro', isa => 'Int');
  has MinDuration => (is => 'ro', isa => 'Num');
  has NextToken => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedInstancesOfferingIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReservedInstancesOfferingId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeReservedInstancesOfferingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;