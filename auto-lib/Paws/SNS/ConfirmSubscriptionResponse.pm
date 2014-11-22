
package Paws::SNS::ConfirmSubscriptionResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has SubscriptionArn => (is => 'ro', isa => 'Str');

}
1;