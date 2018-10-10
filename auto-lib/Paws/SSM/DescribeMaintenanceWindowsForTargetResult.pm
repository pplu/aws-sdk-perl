
package Paws::SSM::DescribeMaintenanceWindowsForTargetResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WindowIdentities => (is => 'ro', isa => 'ArrayRef[Paws::SSM::MaintenanceWindowIdentityForTarget]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowsForTargetResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. (You use this token in
the next call.)


=head2 WindowIdentities => ArrayRef[L<Paws::SSM::MaintenanceWindowIdentityForTarget>]

Information about the Maintenance Window targets and tasks an instance
is associated with.


=head2 _request_id => Str


=cut

1;