
package Aws::SNS::ListSubscriptionsByTopicResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Aws::SNS::Subscription]');

}
1;