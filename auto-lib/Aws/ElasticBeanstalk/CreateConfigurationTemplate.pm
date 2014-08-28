
package Aws::ElasticBeanstalk::CreateConfigurationTemplate {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has SourceConfiguration => (is => 'ro', isa => 'Aws::ElasticBeanstalk::SourceConfiguration');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::CreateConfigurationTemplateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateConfigurationTemplateResult');
}
1;
  