
package Paws::RedShift::CreateEventSubscriptionResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Paws::RedShift::EventSubscription');

}
1;