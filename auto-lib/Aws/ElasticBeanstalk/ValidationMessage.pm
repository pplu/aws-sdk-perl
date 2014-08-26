package Aws::ElasticBeanstalk::ValidationMessage {
  use Moose;
  with ('AWS::API::ResultParser');
  has Message => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
}
1
