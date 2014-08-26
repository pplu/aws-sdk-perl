package Aws::ElasticBeanstalk::LoadBalancerDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has Domain => (is => 'ro', isa => 'Str');
  has Listeners => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Listener]');
  has LoadBalancerName => (is => 'ro', isa => 'Str');
}
1
