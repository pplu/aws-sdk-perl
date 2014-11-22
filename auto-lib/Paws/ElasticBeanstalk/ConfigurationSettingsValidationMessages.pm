
package Paws::ElasticBeanstalk::ConfigurationSettingsValidationMessages {
  use Moose;
  with 'Paws::API::ResultParser';
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ValidationMessage]');

}
1;