
package Paws::EC2::AttachNetworkInterfaceResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachmentId');

}
1;