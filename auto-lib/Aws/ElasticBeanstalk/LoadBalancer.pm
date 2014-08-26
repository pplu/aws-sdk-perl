package Aws::ElasticBeanstalk::LoadBalancer {
  use Moose;
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str');
}
1
