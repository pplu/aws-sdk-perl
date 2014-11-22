
package Paws::EC2::CreateSpotDatafeedSubscriptionResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has SpotDatafeedSubscription => (is => 'ro', isa => 'Paws::EC2::SpotDatafeedSubscription', traits => ['Unwrapped'], xmlname => 'spotDatafeedSubscription');

}
1;