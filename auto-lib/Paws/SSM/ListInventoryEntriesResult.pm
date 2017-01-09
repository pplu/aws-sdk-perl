
package Paws::SSM::ListInventoryEntriesResult;
  use Moose;
  has CaptureTime => (is => 'ro', isa => 'Str');
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryItemEntry]');
  has InstanceId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaVersion => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListInventoryEntriesResult

=head1 ATTRIBUTES


=head2 CaptureTime => Str

The time that inventory information was collected for the instance(s).


=head2 Entries => ArrayRef[L<Paws::SSM::InventoryItemEntry>]

A list of inventory items on the instance(s).


=head2 InstanceId => Str

The instance ID targeted by the request to query inventory information.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 SchemaVersion => Str

The inventory schema version used by the instance(s).


=head2 TypeName => Str

The type of inventory item returned by the request.


=head2 _request_id => Str


=cut

1;