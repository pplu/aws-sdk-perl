
package Paws::RDS::DescribeDBInstances {
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBInstanceMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBInstancesResult');
}
1;