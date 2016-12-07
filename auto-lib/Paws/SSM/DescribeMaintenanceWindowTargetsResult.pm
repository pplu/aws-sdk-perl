
package Paws::SSM::DescribeMaintenanceWindowTargetsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::MaintenanceWindowTarget]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowTargetsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Targets => ArrayRef[L<Paws::SSM::MaintenanceWindowTarget>]

Information about the targets in the Maintenance Window.


=head2 _request_id => Str


=cut

1;