
package Paws::RDS::EventSubscriptionsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[Paws::RDS::EventSubscription]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;