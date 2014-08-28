
package Aws::RedShift::ModifyEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RedShift::EventSubscription');

}
1;