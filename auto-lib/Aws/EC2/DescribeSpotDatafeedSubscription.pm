
package Aws::EC2::DescribeSpotDatafeedSubscription {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotDatafeedSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeSpotDatafeedSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
