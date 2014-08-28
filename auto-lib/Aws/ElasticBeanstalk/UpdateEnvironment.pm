
package Aws::ElasticBeanstalk::UpdateEnvironment {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::OptionSpecification]');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::UpdateEnvironmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateEnvironmentResult');
}
1;
  