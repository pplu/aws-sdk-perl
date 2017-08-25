
package Paws::SSM::UpdateMaintenanceWindowTargetResult;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerInformation => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
  has WindowId => (is => 'ro', isa => 'Str');
  has WindowTargetId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateMaintenanceWindowTargetResult

=head1 ATTRIBUTES


=head2 Description => Str

The updated description.


=head2 Name => Str

The updated name.


=head2 OwnerInformation => Str

The updated owner.


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The updated targets.


=head2 WindowId => Str

The Maintenance Window ID specified in the update request.


=head2 WindowTargetId => Str

The target ID specified in the update request.


=head2 _request_id => Str


=cut

1;