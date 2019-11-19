# Generated from json/callresult_class.tt

package Paws::DMS::DescribeReplicationSubnetGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_ReplicationSubnetGroup/;
  has Marker => (is => 'ro', isa => Str);
  has ReplicationSubnetGroups => (is => 'ro', isa => ArrayRef[DMS_ReplicationSubnetGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReplicationSubnetGroups' => {
                                              'class' => 'Paws::DMS::ReplicationSubnetGroup',
                                              'type' => 'ArrayRef[DMS_ReplicationSubnetGroup]'
                                            },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeReplicationSubnetGroupsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationSubnetGroups => ArrayRef[DMS_ReplicationSubnetGroup]

A description of the replication subnet groups.


=head2 _request_id => Str


=cut

1;