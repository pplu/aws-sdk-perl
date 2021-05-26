
package Paws::QLDB::GetBlockResponse;
  use Moose;
  has Block => (is => 'ro', isa => 'Paws::QLDB::ValueHolder', required => 1);
  has Proof => (is => 'ro', isa => 'Paws::QLDB::ValueHolder');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::GetBlockResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Block => L<Paws::QLDB::ValueHolder>

The block data object in Amazon Ion format.


=head2 Proof => L<Paws::QLDB::ValueHolder>

The proof object in Amazon Ion format returned by a C<GetBlock>
request. A proof contains the list of hash values required to
recalculate the specified digest using a Merkle tree, starting with the
specified block.


=head2 _request_id => Str


=cut

