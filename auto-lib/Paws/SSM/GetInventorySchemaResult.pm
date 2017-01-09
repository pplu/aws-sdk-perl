
package Paws::SSM::GetInventorySchemaResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Schemas => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryItemSchema]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetInventorySchemaResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Schemas => ArrayRef[L<Paws::SSM::InventoryItemSchema>]

Inventory schemas returned by the request.


=head2 _request_id => Str


=cut

1;