
package Paws::DirectConnect::DeleteVirtualInterfaceResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteVirtualInterfaceResponse

=head1 ATTRIBUTES

=head2 virtualInterfaceState => Str

  


=cut

1;