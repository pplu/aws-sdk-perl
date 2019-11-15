
package Paws::QLDB::GetRevisionResponse;
  use Moose;
  has Proof => (is => 'ro', isa => 'Paws::QLDB::ValueHolder');
  has Revision => (is => 'ro', isa => 'Paws::QLDB::ValueHolder', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::GetRevisionResponse

=head1 ATTRIBUTES


=head2 Proof => L<Paws::QLDB::ValueHolder>

The proof object in Amazon Ion format returned by a C<GetRevision>
request. A proof contains the list of hash values that are required to
recalculate the specified digest using a Merkle tree, starting with the
specified document revision.


=head2 B<REQUIRED> Revision => L<Paws::QLDB::ValueHolder>

The document revision data object in Amazon Ion format.


=head2 _request_id => Str


=cut

