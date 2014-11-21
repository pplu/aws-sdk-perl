
package Aws::RDS::EventSubscriptionsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::EventSubscription]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;