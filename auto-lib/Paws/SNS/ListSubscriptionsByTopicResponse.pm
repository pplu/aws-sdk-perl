
package Paws::SNS::ListSubscriptionsByTopicResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Paws::SNS::Subscription]');

}
1;