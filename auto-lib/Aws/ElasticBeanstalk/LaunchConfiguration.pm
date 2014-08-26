package Aws::ElasticBeanstalk::LaunchConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str');
}
1
