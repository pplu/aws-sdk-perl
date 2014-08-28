
package Aws::SNS::ConfirmSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SubscriptionArn => (is => 'ro', isa => 'Str');

}
1;