
package Paws::Neptune::ApplyPendingMaintenanceActionResult;
  use Moose;
  has ResourcePendingMaintenanceActions => (is => 'ro', isa => 'Paws::Neptune::ResourcePendingMaintenanceActions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::ApplyPendingMaintenanceActionResult

=head1 ATTRIBUTES


=head2 ResourcePendingMaintenanceActions => L<Paws::Neptune::ResourcePendingMaintenanceActions>




=head2 _request_id => Str


=cut

