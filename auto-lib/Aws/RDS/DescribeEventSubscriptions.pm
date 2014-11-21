
package Aws::RDS::DescribeEventSubscriptions {
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SubscriptionName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::EventSubscriptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptionsResult');
}
1;