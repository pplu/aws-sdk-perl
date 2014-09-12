package Aws::ElasticBeanstalk::EnvironmentResourcesDescription {
  use Moose;
  has LoadBalancer => (is => 'ro', isa => 'Aws::ElasticBeanstalk::LoadBalancerDescription');
}
1
