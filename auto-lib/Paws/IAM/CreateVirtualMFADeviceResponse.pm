
package Paws::IAM::CreateVirtualMFADeviceResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has VirtualMFADevice => (is => 'ro', isa => 'Paws::IAM::VirtualMFADevice', required => 1);

}
1;