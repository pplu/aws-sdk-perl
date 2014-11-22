
package Paws::OpsWorks::DescribeVolumes {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has RaidArrayId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeVolumesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;