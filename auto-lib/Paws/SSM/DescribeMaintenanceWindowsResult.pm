
package Paws::SSM::DescribeMaintenanceWindowsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WindowIdentities => (is => 'ro', isa => 'ArrayRef[Paws::SSM::MaintenanceWindowIdentity]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 WindowIdentities => ArrayRef[L<Paws::SSM::MaintenanceWindowIdentity>]

Information about the Maintenance Windows.


=head2 _request_id => Str


=cut

1;