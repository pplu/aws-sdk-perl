
package Aws::RDS::CreateEventSubscription {
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has SnsTopicArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::CreateEventSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEventSubscriptionResult');
}
1;