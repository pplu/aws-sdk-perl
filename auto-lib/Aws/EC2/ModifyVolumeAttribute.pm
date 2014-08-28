
package Aws::EC2::ModifyVolumeAttribute {
  use Moose;
  has AutoEnableIO => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has DryRun => (is => 'ro', isa => 'Bool');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVolumeAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;