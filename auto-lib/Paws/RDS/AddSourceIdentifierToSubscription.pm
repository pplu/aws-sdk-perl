
package Paws::RDS::AddSourceIdentifierToSubscription {
  use Moose;
  has SourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddSourceIdentifierToSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::AddSourceIdentifierToSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AddSourceIdentifierToSubscriptionResult');
}
1;