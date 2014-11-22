
package Paws::RDS::DeleteEventSubscription {
  use Moose;
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DeleteEventSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscriptionResult');
}
1;