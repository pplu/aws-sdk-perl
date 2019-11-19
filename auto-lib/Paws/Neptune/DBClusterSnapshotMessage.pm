# Generated from callresult_class.tt

package Paws::Neptune::DBClusterSnapshotMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_DBClusterSnapshot/;
  has DBClusterSnapshots => (is => 'ro', isa => ArrayRef[Neptune_DBClusterSnapshot]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DBClusterSnapshots' => 'DBClusterSnapshot'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'DBClusterSnapshots' => {
                                         'type' => 'ArrayRef[Neptune_DBClusterSnapshot]',
                                         'class' => 'Paws::Neptune::DBClusterSnapshot'
                                       }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBClusterSnapshotMessage

=head1 ATTRIBUTES


=head2 DBClusterSnapshots => ArrayRef[Neptune_DBClusterSnapshot]

Provides a list of DB cluster snapshots for the user.


=head2 Marker => Str

An optional pagination token provided by a previous
DescribeDBClusterSnapshots request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

