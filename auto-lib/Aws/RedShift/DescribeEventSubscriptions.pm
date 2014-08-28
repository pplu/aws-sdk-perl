
package Aws::RedShift::DescribeEventSubscriptions {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SubscriptionName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::DescribeEventSubscriptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptionsResult');
}
1;
  