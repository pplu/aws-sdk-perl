
package Aws::EC2::CreateSubnet {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubnet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateSubnetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;