
package Aws::Config::DescribeDeliveryChannelsResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has DeliveryChannels => (is => 'ro', isa => 'ArrayRef[Aws::Config::DeliveryChannel]');

}
1;