
package Aws::SNS::GetSubscriptionAttributesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::SNS::SubscriptionAttributesMap');

}
1;