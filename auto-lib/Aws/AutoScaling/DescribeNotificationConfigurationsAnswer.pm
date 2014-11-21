
package Aws::AutoScaling::DescribeNotificationConfigurationsAnswer {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has NotificationConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::NotificationConfiguration]', required => 1);

}
1;