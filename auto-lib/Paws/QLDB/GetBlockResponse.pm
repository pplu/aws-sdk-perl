
package Paws::QLDB::GetBlockResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::QLDB::Types qw/QLDB_ValueHolder/;
  has Block => (is => 'ro', isa => QLDB_ValueHolder, required => 1);
  has Proof => (is => 'ro', isa => QLDB_ValueHolder);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Block' => 1
                  },
  'types' => {
               'Proof' => {
                            'type' => 'QLDB_ValueHolder',
                            'class' => 'Paws::QLDB::ValueHolder'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Block' => {
                            'class' => 'Paws::QLDB::ValueHolder',
                            'type' => 'QLDB_ValueHolder'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::GetBlockResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Block => QLDB_ValueHolder

The block data object in Amazon Ion format.


=head2 Proof => QLDB_ValueHolder

The proof object in Amazon Ion format returned by a C<GetBlock>
request. A proof contains the list of hash values required to
recalculate the specified digest using a Merkle tree, starting with the
specified block.


=head2 _request_id => Str


=cut

