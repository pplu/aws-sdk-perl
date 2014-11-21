
package Aws::RDS::DescribeReservedDBInstances {
  use Moose;
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedDBInstanceId => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedDBInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::ReservedDBInstanceMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedDBInstancesResult');
}
1;