
package Paws::IAM::ListVirtualMFADevicesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has VirtualMFADevices => (is => 'ro', isa => 'ArrayRef[Paws::IAM::VirtualMFADevice]', required => 1);

}
1;