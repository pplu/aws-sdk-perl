
package Aws::CloudFormation::DescribeStackResource {
  use Moose;
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::DescribeStackResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourceResult');
}
1;
  