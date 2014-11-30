
package Paws::DirectConnect::ConfirmPrivateVirtualInterfaceResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ConfirmPrivateVirtualInterfaceResponse

=head1 ATTRIBUTES

=head2 virtualInterfaceState => Str

  


=cut

1;