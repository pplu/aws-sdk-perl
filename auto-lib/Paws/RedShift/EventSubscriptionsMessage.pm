
package Paws::RedShift::EventSubscriptionsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::EventSubscription]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;