
package Aws::ElasticBeanstalk::EventDescriptionsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::EventDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;