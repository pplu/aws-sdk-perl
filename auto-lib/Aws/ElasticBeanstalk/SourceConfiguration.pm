package Aws::ElasticBeanstalk::SourceConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
}
1
