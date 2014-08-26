package Aws::ElasticBeanstalk::Trigger {
  use Moose;
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str');
}
1
