# Generated from json/callresult_class.tt

package Paws::DMS::DescribeReplicationInstancesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_ReplicationInstance/;
  has Marker => (is => 'ro', isa => Str);
  has ReplicationInstances => (is => 'ro', isa => ArrayRef[DMS_ReplicationInstance]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReplicationInstances' => {
                                           'class' => 'Paws::DMS::ReplicationInstance',
                                           'type' => 'ArrayRef[DMS_ReplicationInstance]'
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

Paws::DMS::DescribeReplicationInstancesResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationInstances => ArrayRef[DMS_ReplicationInstance]

The replication instances described.


=head2 _request_id => Str


=cut

1;