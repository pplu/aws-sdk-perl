
package Aws::ElasticBeanstalk::CreateEnvironment {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CNAMEPrefix => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str', required => 1);
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::OptionSpecification]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Tag]');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::CreateEnvironmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEnvironmentResult');
}
1;
  