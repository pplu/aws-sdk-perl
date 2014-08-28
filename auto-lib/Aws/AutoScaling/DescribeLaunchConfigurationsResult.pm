
package Aws::AutoScaling::DescribeLaunchConfigurationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LaunchConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::LaunchConfiguration]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
1;