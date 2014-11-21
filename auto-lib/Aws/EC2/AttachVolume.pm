
package Aws::EC2::AttachVolume {
  use Moose;
  has Device => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::VolumeAttachment');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;