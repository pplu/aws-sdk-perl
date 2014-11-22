
package Paws::Config::DescribeDeliveryChannelsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DeliveryChannels => (is => 'ro', isa => 'ArrayRef[Paws::Config::DeliveryChannel]');

}
1;