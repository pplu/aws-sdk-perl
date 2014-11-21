
package Aws::ElasticBeanstalk::ConfigurationSettingsValidationMessages {
  use Moose;
  with 'AWS::API::ResultParser';
  has Messages => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ValidationMessage]');

}
1;