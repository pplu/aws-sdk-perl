
package Aws::RedShift::EventSubscriptionsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EventSubscription]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;