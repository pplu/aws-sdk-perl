
package Aws::EC2::CreateImage {
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NoReboot => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
