
package Aws::Config::DescribeDeliveryChannelStatusResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has DeliveryChannelsStatus => (is => 'ro', isa => 'ArrayRef[Aws::Config::DeliveryChannelStatus]');

}
1;