
package Paws::OpsWorks::RegisterVolume {
  use Moose;
  has Ec2VolumeId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::RegisterVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;