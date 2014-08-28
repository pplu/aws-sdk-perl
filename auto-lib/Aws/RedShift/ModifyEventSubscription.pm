
package Aws::RedShift::ModifyEventSubscription {
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'EventCategory' );
  has Severity => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SourceId' );
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::ModifyEventSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscriptionResult');
}
1;
