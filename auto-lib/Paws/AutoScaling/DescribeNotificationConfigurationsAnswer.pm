
package Paws::AutoScaling::DescribeNotificationConfigurationsAnswer {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has NotificationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::NotificationConfiguration]', required => 1);

}
1;