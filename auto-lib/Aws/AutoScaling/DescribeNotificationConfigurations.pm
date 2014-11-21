
package Aws::AutoScaling::DescribeNotificationConfigurations {
  use Moose;
  has AutoScalingGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNotificationConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeNotificationConfigurationsAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeNotificationConfigurationsResult');
}
1;