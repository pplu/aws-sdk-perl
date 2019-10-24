# Generated from callresult_class.tt

package Paws::DocDB::DBClusterSnapshotMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_DBClusterSnapshot/;
  has DBClusterSnapshots => (is => 'ro', isa => ArrayRef[DocDB_DBClusterSnapshot]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterSnapshots' => {
                                         'class' => 'Paws::DocDB::DBClusterSnapshot',
                                         'type' => 'ArrayRef[DocDB_DBClusterSnapshot]'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'DBClusterSnapshots' => 'DBClusterSnapshot'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBClusterSnapshotMessage

=head1 ATTRIBUTES


=head2 DBClusterSnapshots => ArrayRef[DocDB_DBClusterSnapshot]

Provides a list of DB cluster snapshots.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

