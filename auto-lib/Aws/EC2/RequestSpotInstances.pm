
package Aws::EC2::RequestSpotInstances {
  use Moose;
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has LaunchGroup => (is => 'ro', isa => 'Str');
  has LaunchSpecification => (is => 'ro', isa => 'Aws::EC2::LaunchSpecification');
  has SpotPrice => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str');
  has ValidFrom => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestSpotInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::RequestSpotInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;