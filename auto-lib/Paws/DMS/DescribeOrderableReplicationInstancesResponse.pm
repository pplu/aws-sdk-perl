# Generated from json/callresult_class.tt

package Paws::DMS::DescribeOrderableReplicationInstancesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_OrderableReplicationInstance/;
  has Marker => (is => 'ro', isa => Str);
  has OrderableReplicationInstances => (is => 'ro', isa => ArrayRef[DMS_OrderableReplicationInstance]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrderableReplicationInstances' => {
                                                    'type' => 'ArrayRef[DMS_OrderableReplicationInstance]',
                                                    'class' => 'Paws::DMS::OrderableReplicationInstance'
                                                  },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::DMS::DescribeOrderableReplicationInstancesResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 OrderableReplicationInstances => ArrayRef[DMS_OrderableReplicationInstance]

The order-able replication instances available.


=head2 _request_id => Str


=cut

1;