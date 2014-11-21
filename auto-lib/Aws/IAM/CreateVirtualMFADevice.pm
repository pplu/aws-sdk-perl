
package Aws::IAM::CreateVirtualMFADevice {
  use Moose;
  has Path => (is => 'ro', isa => 'Str');
  has VirtualMFADeviceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateVirtualMFADeviceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADeviceResult');
}
1;