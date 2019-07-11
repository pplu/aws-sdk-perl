
package Paws::ManagedBlockchain::CreateNetworkOutput;
  use Moose;
  has MemberId => (is => 'ro', isa => 'Str');
  has NetworkId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::CreateNetworkOutput

=head1 ATTRIBUTES


=head2 MemberId => Str

The unique identifier for the first member within the network.


=head2 NetworkId => Str

The unique identifier for the network.


=head2 _request_id => Str


=cut

