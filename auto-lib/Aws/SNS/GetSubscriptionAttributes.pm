
package Aws::SNS::GetSubscriptionAttributes {
  use Moose;
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscriptionAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::GetSubscriptionAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSubscriptionAttributesResult');
}
1;
  