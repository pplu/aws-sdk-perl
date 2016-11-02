
package Paws::RDS::ApplyPendingMaintenanceActionResult;
  use Moose;
  has ResourcePendingMaintenanceActions => (is => 'ro', isa => 'Paws::RDS::ResourcePendingMaintenanceActions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ApplyPendingMaintenanceActionResult

=head1 ATTRIBUTES


=head2 ResourcePendingMaintenanceActions => L<Paws::RDS::ResourcePendingMaintenanceActions>




=head2 _request_id => Str


=cut

