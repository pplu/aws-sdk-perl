
package Aws::CloudFormation::DescribeStackResources {
  use Moose;
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::DescribeStackResourcesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourcesResult');
}
1;
