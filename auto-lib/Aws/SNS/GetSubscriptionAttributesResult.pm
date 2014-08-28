
package Aws::SNS::GetSubscriptionAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::SNS::SubscriptionAttributesMap');

}
1;