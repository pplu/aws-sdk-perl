
package Paws::QLDB::GetDigestResponse;
  use Moose;
  has Digest => (is => 'ro', isa => 'Str', required => 1);
  has DigestTipAddress => (is => 'ro', isa => 'Paws::QLDB::ValueHolder', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::GetDigestResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Digest => Str

The 256-bit hash value representing the digest returned by a
C<GetDigest> request.


=head2 B<REQUIRED> DigestTipAddress => L<Paws::QLDB::ValueHolder>

The latest block location covered by the digest that you requested. An
address is an Amazon Ion structure that has two fields: C<strandId> and
C<sequenceNo>.


=head2 _request_id => Str


=cut

