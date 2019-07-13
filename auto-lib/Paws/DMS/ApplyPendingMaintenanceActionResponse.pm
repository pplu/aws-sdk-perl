
package Paws::DMS::ApplyPendingMaintenanceActionResponse;
  use Moose;
  has ResourcePendingMaintenanceActions => (is => 'ro', isa => 'Paws::DMS::ResourcePendingMaintenanceActions');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ApplyPendingMaintenanceActionResponse

=head1 ATTRIBUTES


=head2 ResourcePendingMaintenanceActions => L<Paws::DMS::ResourcePendingMaintenanceActions>

The AWS DMS resource that the pending maintenance action will be
applied to.


=head2 _request_id => Str


=cut

1;