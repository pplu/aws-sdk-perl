
package Paws::IAM::ListMFADevicesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MFADevices => (is => 'ro', isa => 'ArrayRef[Paws::IAM::MFADevice]', required => 1);

}
1;