
package Paws::DirectConnect::DeleteBGPPeerResponse;
  use Moose;
  has VirtualInterface => (is => 'ro', isa => 'Paws::DirectConnect::VirtualInterface', traits => ['NameInRequest'], request_name => 'virtualInterface' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteBGPPeerResponse

=head1 ATTRIBUTES


=head2 VirtualInterface => L<Paws::DirectConnect::VirtualInterface>

The virtual interface.


=head2 _request_id => Str


=cut

1;