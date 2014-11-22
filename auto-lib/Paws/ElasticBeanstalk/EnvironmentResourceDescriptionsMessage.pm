
package Paws::ElasticBeanstalk::EnvironmentResourceDescriptionsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has EnvironmentResources => (is => 'ro', isa => 'Paws::ElasticBeanstalk::EnvironmentResourceDescription');

}
1;