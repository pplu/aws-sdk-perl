
package Paws::EC2::DescribeAvailabilityZones {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has ZoneNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ZoneName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityZones');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeAvailabilityZonesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;