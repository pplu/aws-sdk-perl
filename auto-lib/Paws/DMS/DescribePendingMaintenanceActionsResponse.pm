# Generated from json/callresult_class.tt

package Paws::DMS::DescribePendingMaintenanceActionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_ResourcePendingMaintenanceActions/;
  has Marker => (is => 'ro', isa => Str);
  has PendingMaintenanceActions => (is => 'ro', isa => ArrayRef[DMS_ResourcePendingMaintenanceActions]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PendingMaintenanceActions' => {
                                                'class' => 'Paws::DMS::ResourcePendingMaintenanceActions',
                                                'type' => 'ArrayRef[DMS_ResourcePendingMaintenanceActions]'
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

Paws::DMS::DescribePendingMaintenanceActionsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 PendingMaintenanceActions => ArrayRef[DMS_ResourcePendingMaintenanceActions]

The pending maintenance action.


=head2 _request_id => Str


=cut

1;