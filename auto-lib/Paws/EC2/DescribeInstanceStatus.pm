
package Paws::EC2::DescribeInstanceStatus {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IncludeAllInstances => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeAllInstances' );
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeInstanceStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;