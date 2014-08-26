package Aws::ElasticBeanstalk::EnvironmentResourcesDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has LoadBalancer => (is => 'ro', isa => 'Aws::ElasticBeanstalk::LoadBalancerDescription');
}
1
