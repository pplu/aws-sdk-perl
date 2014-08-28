
package Aws::RedShift::CreateEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RedShift::EventSubscription');

}
1;