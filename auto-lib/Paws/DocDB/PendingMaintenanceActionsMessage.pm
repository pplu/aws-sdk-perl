# Generated from callresult_class.tt

package Paws::DocDB::PendingMaintenanceActionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_ResourcePendingMaintenanceActions/;
  has Marker => (is => 'ro', isa => Str);
  has PendingMaintenanceActions => (is => 'ro', isa => ArrayRef[DocDB_ResourcePendingMaintenanceActions]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PendingMaintenanceActions' => {
                                                'class' => 'Paws::DocDB::ResourcePendingMaintenanceActions',
                                                'type' => 'ArrayRef[DocDB_ResourcePendingMaintenanceActions]'
                                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'PendingMaintenanceActions' => 'ResourcePendingMaintenanceActions'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::PendingMaintenanceActionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 PendingMaintenanceActions => ArrayRef[DocDB_ResourcePendingMaintenanceActions]

The maintenance actions to be applied.


=head2 _request_id => Str


=cut

