
package Paws::SNS::SubscribeResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has SubscriptionArn => (is => 'ro', isa => 'Str');

}
1;