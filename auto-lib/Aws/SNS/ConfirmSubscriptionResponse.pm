
package Aws::SNS::ConfirmSubscriptionResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has SubscriptionArn => (is => 'ro', isa => 'Str');

}
1;