
package Paws::Config::DescribeDeliveryChannelStatusResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DeliveryChannelsStatus => (is => 'ro', isa => 'ArrayRef[Paws::Config::DeliveryChannelStatus]');

}
1;