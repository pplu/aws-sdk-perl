
package Paws::AutoScaling::LaunchConfigurationsType {
  use Moose;
  with 'Paws::API::ResultParser';
  has LaunchConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::LaunchConfiguration]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
1;