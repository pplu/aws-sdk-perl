
package Aws::ElasticBeanstalk::ValidateConfigurationSettingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Messages => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ValidationMessage]');

}
1;