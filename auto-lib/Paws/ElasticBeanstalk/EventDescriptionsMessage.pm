
package Paws::ElasticBeanstalk::EventDescriptionsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::EventDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;