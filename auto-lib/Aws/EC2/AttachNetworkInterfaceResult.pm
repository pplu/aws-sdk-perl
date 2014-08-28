
package Aws::EC2::AttachNetworkInterfaceResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachmentId');

}
1;