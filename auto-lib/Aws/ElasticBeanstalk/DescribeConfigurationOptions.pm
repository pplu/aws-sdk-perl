
package Aws::ElasticBeanstalk::DescribeConfigurationOptions {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::OptionSpecification]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::DescribeConfigurationOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptionsResult');
}
1;
