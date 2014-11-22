
package Paws::SNS::ConfirmSubscription {
  use Moose;
  has AuthenticateOnUnsubscribe => (is => 'ro', isa => 'Str');
  has Token => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::ConfirmSubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmSubscriptionResult');
}
1;