
package Paws::ManagedBlockchain::GetNetworkOutput;
  use Moose;
  has Network => (is => 'ro', isa => 'Paws::ManagedBlockchain::Network');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::GetNetworkOutput

=head1 ATTRIBUTES


=head2 Network => L<Paws::ManagedBlockchain::Network>

An object containing network configuration parameters.


=head2 _request_id => Str


=cut

