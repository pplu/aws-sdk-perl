
package Aws::ElasticBeanstalk::DescribeConfigurationSettingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConfigurationSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationSettingsDescription]');

}
1;