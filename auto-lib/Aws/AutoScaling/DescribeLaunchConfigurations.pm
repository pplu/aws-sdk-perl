
package Aws::AutoScaling::DescribeLaunchConfigurations {
  use Moose;
  has LaunchConfigurationNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLaunchConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeLaunchConfigurationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLaunchConfigurationsResult');
}
1;
