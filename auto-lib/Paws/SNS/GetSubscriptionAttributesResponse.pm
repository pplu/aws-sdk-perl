
package Paws::SNS::GetSubscriptionAttributesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Paws::SNS::SubscriptionAttributesMap');

}
1;