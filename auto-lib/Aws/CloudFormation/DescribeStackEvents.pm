
package Aws::CloudFormation::DescribeStackEvents {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::DescribeStackEventsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackEventsResult');
}
1;