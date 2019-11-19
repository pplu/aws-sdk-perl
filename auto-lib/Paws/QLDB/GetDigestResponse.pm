
package Paws::QLDB::GetDigestResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::QLDB::Types qw/QLDB_ValueHolder/;
  has Digest => (is => 'ro', isa => Str, required => 1);
  has DigestTipAddress => (is => 'ro', isa => QLDB_ValueHolder, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Digest' => 1,
                    'DigestTipAddress' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DigestTipAddress' => {
                                       'type' => 'QLDB_ValueHolder',
                                       'class' => 'Paws::QLDB::ValueHolder'
                                     },
               'Digest' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::GetDigestResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Digest => Str

The 256-bit hash value representing the digest returned by a
C<GetDigest> request.


=head2 B<REQUIRED> DigestTipAddress => QLDB_ValueHolder

The latest block location covered by the digest that you requested. An
address is an Amazon Ion structure that has two fields: C<strandId> and
C<sequenceNo>.


=head2 _request_id => Str


=cut

