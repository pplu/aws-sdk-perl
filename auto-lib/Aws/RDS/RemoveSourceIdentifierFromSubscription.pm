
package Aws::RDS::RemoveSourceIdentifierFromSubscription {
  use Moose;
  has SourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveSourceIdentifierFromSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::RemoveSourceIdentifierFromSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveSourceIdentifierFromSubscriptionResult');
}
1;
  