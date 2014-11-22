
package Paws::ElasticBeanstalk::ConfigurationSettingsDescriptions {
  use Moose;
  with 'Paws::API::ResultParser';
  has ConfigurationSettings => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ConfigurationSettingsDescription]');

}
1;