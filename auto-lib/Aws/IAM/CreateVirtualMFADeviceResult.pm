
package Aws::IAM::CreateVirtualMFADeviceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VirtualMFADevice => (is => 'ro', isa => 'Aws::IAM::VirtualMFADevice', required => 1);

}
1;