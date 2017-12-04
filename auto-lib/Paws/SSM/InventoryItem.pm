package Paws::SSM::InventoryItem;
  use Moose;
  has CaptureTime => (is => 'ro', isa => 'Str', required => 1);
  has Content => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryItemEntry]');
  has ContentHash => (is => 'ro', isa => 'Str');
  has Context => (is => 'ro', isa => 'Paws::SSM::InventoryItemContentContext');
  has SchemaVersion => (is => 'ro', isa => 'Str', required => 1);
  has TypeName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InventoryItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InventoryItem object:

  $service_obj->Method(Att1 => { CaptureTime => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InventoryItem object:

  $result = $service_obj->Method(...);
  $result->Att1->CaptureTime

=head1 DESCRIPTION

Information collected from managed instances based on your inventory
policy document

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaptureTime => Str

  The time the inventory information was collected.


=head2 Content => ArrayRef[L<Paws::SSM::InventoryItemEntry>]

  The inventory data of the inventory type.


=head2 ContentHash => Str

  MD5 hash of the inventory item type contents. The content hash is used
to determine whether to update inventory information. The PutInventory
API does not update the inventory item type contents if the MD5 hash
has not changed since last update.


=head2 Context => L<Paws::SSM::InventoryItemContentContext>

  A map of associated properties for a specified inventory type. For
example, with this attribute, you can specify the C<ExecutionId>,
C<ExecutionType>, C<ComplianceType> properties of the
C<AWS:ComplianceItem> type.


=head2 B<REQUIRED> SchemaVersion => Str

  The schema version for the inventory item.


=head2 B<REQUIRED> TypeName => Str

  The name of the inventory type. Default inventory item type names start
with AWS. Custom inventory type names will start with Custom. Default
inventory item types include the following: AWS:AWSComponent,
AWS:Application, AWS:InstanceInformation, AWS:Network, and
AWS:WindowsUpdate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

