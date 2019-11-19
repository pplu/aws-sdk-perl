# Generated from callresult_class.tt

package Paws::RDS::PendingMaintenanceActionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_ResourcePendingMaintenanceActions/;
  has Marker => (is => 'ro', isa => Str);
  has PendingMaintenanceActions => (is => 'ro', isa => ArrayRef[RDS_ResourcePendingMaintenanceActions]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PendingMaintenanceActions' => 'ResourcePendingMaintenanceActions'
                     },
  'types' => {
               'PendingMaintenanceActions' => {
                                                'type' => 'ArrayRef[RDS_ResourcePendingMaintenanceActions]',
                                                'class' => 'Paws::RDS::ResourcePendingMaintenanceActions'
                                              },
               'Marker' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::PendingMaintenanceActionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribePendingMaintenanceActions> request. If this parameter is
specified, the response includes only records beyond the marker, up to
a number of records specified by C<MaxRecords>.


=head2 PendingMaintenanceActions => ArrayRef[RDS_ResourcePendingMaintenanceActions]

A list of the pending maintenance actions for the resource.


=head2 _request_id => Str


=cut

