
package Aws::RDS::DescribeEventSubscriptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::EventSubscription]', traits => ['Unwrapped'], xmlname => 'EventSubscription');
  has Marker => (is => 'ro', isa => 'Str');

}
1;