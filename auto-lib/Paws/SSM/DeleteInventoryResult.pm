
package Paws::SSM::DeleteInventoryResult;
  use Moose;
  has DeletionId => (is => 'ro', isa => 'Str');
  has DeletionSummary => (is => 'ro', isa => 'Paws::SSM::InventoryDeletionSummary');
  has TypeName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteInventoryResult

=head1 ATTRIBUTES


=head2 DeletionId => Str

Every C<DeleteInventory> action is assigned a unique ID. This option
returns a unique ID. You can use this ID to query the status of a
delete operation. This option is useful for ensuring that a delete
operation has completed before you begin other actions.


=head2 DeletionSummary => L<Paws::SSM::InventoryDeletionSummary>

A summary of the delete operation. For more information about this
summary, see Understanding the Delete Inventory Summary
(http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-delete.html#sysman-inventory-delete-summary)
in the I<AWS Systems Manager User Guide>.


=head2 TypeName => Str

The name of the inventory data type specified in the request.


=head2 _request_id => Str


=cut

1;