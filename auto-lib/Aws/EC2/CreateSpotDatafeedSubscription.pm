
package Aws::EC2::CreateSpotDatafeedSubscription {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Prefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSpotDatafeedSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateSpotDatafeedSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;