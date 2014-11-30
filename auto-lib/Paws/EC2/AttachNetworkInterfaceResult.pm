
package Paws::EC2::AttachNetworkInterfaceResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachmentId');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AttachNetworkInterfaceResult

=head1 ATTRIBUTES

=head2 AttachmentId => Str

  

The ID of the network interface attachment.











=cut

