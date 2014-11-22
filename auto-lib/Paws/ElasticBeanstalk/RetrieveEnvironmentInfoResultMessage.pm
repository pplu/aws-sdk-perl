
package Paws::ElasticBeanstalk::RetrieveEnvironmentInfoResultMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has EnvironmentInfo => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::EnvironmentInfoDescription]');

}
1;