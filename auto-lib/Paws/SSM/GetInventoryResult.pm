
package Paws::SSM::GetInventoryResult;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryResultEntity]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetInventoryResult

=head1 ATTRIBUTES


=head2 Entities => ArrayRef[L<Paws::SSM::InventoryResultEntity>]

Collection of inventory entities such as a collection of instance
inventory.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;