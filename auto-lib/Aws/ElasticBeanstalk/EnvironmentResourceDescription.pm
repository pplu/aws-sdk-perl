package Aws::ElasticBeanstalk::EnvironmentResourceDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::AutoScalingGroup]');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Instance]');
  has LaunchConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::LaunchConfiguration]');
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::LoadBalancer]');
  has Queues => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Queue]');
  has Triggers => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Trigger]');
}
1
