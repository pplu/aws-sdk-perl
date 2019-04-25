
package Paws::DocDB::PendingMaintenanceActionsMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has PendingMaintenanceActions => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::ResourcePendingMaintenanceActions]', request_name => 'ResourcePendingMaintenanceActions', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::PendingMaintenanceActionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 PendingMaintenanceActions => ArrayRef[L<Paws::DocDB::ResourcePendingMaintenanceActions>]

The maintenance actions to be applied.


=head2 _request_id => Str


=cut

