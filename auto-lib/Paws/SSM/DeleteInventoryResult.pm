# Generated from json/callresult_class.tt

package Paws::SSM::DeleteInventoryResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_InventoryDeletionSummary/;
  has DeletionId => (is => 'ro', isa => Str);
  has DeletionSummary => (is => 'ro', isa => SSM_InventoryDeletionSummary);
  has TypeName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeletionSummary' => {
                                      'class' => 'Paws::SSM::InventoryDeletionSummary',
                                      'type' => 'SSM_InventoryDeletionSummary'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TypeName' => {
                               'type' => 'Str'
                             },
               'DeletionId' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteInventoryResult

=head1 ATTRIBUTES


=head2 DeletionId => Str

Every C<DeleteInventory> action is assigned a unique ID. This option
returns a unique ID. You can use this ID to query the status of a
delete operation. This option is useful for ensuring that a delete
operation has completed before you begin other actions.


=head2 DeletionSummary => SSM_InventoryDeletionSummary

A summary of the delete operation. For more information about this
summary, see Understanding the Delete Inventory Summary
(http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-delete.html#sysman-inventory-delete-summary)
in the I<AWS Systems Manager User Guide>.


=head2 TypeName => Str

The name of the inventory data type specified in the request.


=head2 _request_id => Str


=cut

1;