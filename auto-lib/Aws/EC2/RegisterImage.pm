
package Aws::EC2::RegisterImage {
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has ImageLocation => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has RootDeviceName => (is => 'ro', isa => 'Str');
  has SriovNetSupport => (is => 'ro', isa => 'Str');
  has VirtualizationType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::RegisterImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
