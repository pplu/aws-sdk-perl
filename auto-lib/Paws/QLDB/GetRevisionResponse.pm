
package Paws::QLDB::GetRevisionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::QLDB::Types qw/QLDB_ValueHolder/;
  has Proof => (is => 'ro', isa => QLDB_ValueHolder);
  has Revision => (is => 'ro', isa => QLDB_ValueHolder, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Revision' => {
                               'class' => 'Paws::QLDB::ValueHolder',
                               'type' => 'QLDB_ValueHolder'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Proof' => {
                            'class' => 'Paws::QLDB::ValueHolder',
                            'type' => 'QLDB_ValueHolder'
                          }
             },
  'IsRequired' => {
                    'Revision' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::GetRevisionResponse

=head1 ATTRIBUTES


=head2 Proof => QLDB_ValueHolder

The proof object in Amazon Ion format returned by a C<GetRevision>
request. A proof contains the list of hash values that are required to
recalculate the specified digest using a Merkle tree, starting with the
specified document revision.


=head2 B<REQUIRED> Revision => QLDB_ValueHolder

The document revision data object in Amazon Ion format.


=head2 _request_id => Str


=cut

