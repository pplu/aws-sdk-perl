
package Aws::EC2::DetachVolume {
  use Moose;
  has Device => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Force => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DetachVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
