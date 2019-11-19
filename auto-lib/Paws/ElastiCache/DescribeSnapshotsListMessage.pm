# Generated from callresult_class.tt

package Paws::ElastiCache::DescribeSnapshotsListMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_Snapshot/;
  has Marker => (is => 'ro', isa => Str);
  has Snapshots => (is => 'ro', isa => ArrayRef[ElastiCache_Snapshot]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Snapshots' => {
                                'type' => 'ArrayRef[ElastiCache_Snapshot]',
                                'class' => 'Paws::ElastiCache::Snapshot'
                              },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Snapshots' => 'Snapshot'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeSnapshotsListMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.


=head2 Snapshots => ArrayRef[ElastiCache_Snapshot]

A list of snapshots. Each item in the list contains detailed
information about one snapshot.


=head2 _request_id => Str


=cut

