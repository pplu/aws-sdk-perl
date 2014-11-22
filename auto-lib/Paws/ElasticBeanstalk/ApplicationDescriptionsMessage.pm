
package Paws::ElasticBeanstalk::ApplicationDescriptionsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ApplicationDescription]');

}
1;