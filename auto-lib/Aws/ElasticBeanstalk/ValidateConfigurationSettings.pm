
package Aws::ElasticBeanstalk::ValidateConfigurationSettings {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::ConfigurationSettingsValidationMessages');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettingsResult');
}
1;