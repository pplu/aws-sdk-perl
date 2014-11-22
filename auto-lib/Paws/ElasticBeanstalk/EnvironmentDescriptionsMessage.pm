
package Paws::ElasticBeanstalk::EnvironmentDescriptionsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Environments => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::EnvironmentDescription]');

}
1;