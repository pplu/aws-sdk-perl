
package Aws::RDS::AddSourceIdentifierToSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
1;