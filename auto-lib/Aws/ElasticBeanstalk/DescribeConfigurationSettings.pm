
package Aws::ElasticBeanstalk::DescribeConfigurationSettings {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::DescribeConfigurationSettingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSettingsResult');
}
1;
