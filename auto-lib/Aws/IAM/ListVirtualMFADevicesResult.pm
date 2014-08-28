
package Aws::IAM::ListVirtualMFADevicesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has VirtualMFADevices => (is => 'ro', isa => 'ArrayRef[Aws::IAM::VirtualMFADevice]', required => 1);

}
1;