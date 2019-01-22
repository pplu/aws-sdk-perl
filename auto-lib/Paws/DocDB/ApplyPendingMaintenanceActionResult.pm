
package Paws::DocDB::ApplyPendingMaintenanceActionResult;
  use Moose;
  has ResourcePendingMaintenanceActions => (is => 'ro', isa => 'Paws::DocDB::ResourcePendingMaintenanceActions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::ApplyPendingMaintenanceActionResult

=head1 ATTRIBUTES


=head2 ResourcePendingMaintenanceActions => L<Paws::DocDB::ResourcePendingMaintenanceActions>




=head2 _request_id => Str


=cut

