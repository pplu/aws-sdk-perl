package Paws::SSM::InventoryDeletionStatusItem;
  use Moose;
  has DeletionId => (is => 'ro', isa => 'Str');
  has DeletionStartTime => (is => 'ro', isa => 'Str');
  has DeletionSummary => (is => 'ro', isa => 'Paws::SSM::InventoryDeletionSummary');
  has LastStatus => (is => 'ro', isa => 'Str');
  has LastStatusMessage => (is => 'ro', isa => 'Str');
  has LastStatusUpdateTime => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InventoryDeletionStatusItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InventoryDeletionStatusItem object:

  $service_obj->Method(Att1 => { DeletionId => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InventoryDeletionStatusItem object:

  $result = $service_obj->Method(...);
  $result->Att1->DeletionId

=head1 DESCRIPTION

Status information returned by the C<DeleteInventory> action.

=head1 ATTRIBUTES


=head2 DeletionId => Str

  The deletion ID returned by the C<DeleteInventory> action.


=head2 DeletionStartTime => Str

  The UTC timestamp when the delete operation started.


=head2 DeletionSummary => L<Paws::SSM::InventoryDeletionSummary>

  Information about the delete operation. For more information about this
summary, see Understanding the Delete Inventory Summary
(http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-delete.html#sysman-inventory-delete-summary)
in the I<AWS Systems Manager User Guide>.


=head2 LastStatus => Str

  The status of the operation. Possible values are InProgress and
Complete.


=head2 LastStatusMessage => Str

  Information about the status.


=head2 LastStatusUpdateTime => Str

  The UTC timestamp of when the last status report.


=head2 TypeName => Str

  The name of the inventory data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

