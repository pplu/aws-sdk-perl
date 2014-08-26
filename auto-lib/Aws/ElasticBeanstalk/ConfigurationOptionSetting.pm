package Aws::ElasticBeanstalk::ConfigurationOptionSetting {
  use Moose;
  with ('AWS::API::ResultParser');
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}
1
