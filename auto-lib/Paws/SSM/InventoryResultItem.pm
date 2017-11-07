package Paws::SSM::InventoryResultItem;
  use Moose;
  has CaptureTime => (is => 'ro', isa => 'Str');
  has Content => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryItemEntry]', required => 1);
  has ContentHash => (is => 'ro', isa => 'Str');
  has SchemaVersion => (is => 'ro', isa => 'Str', required => 1);
  has TypeName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InventoryResultItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InventoryResultItem object:

  $service_obj->Method(Att1 => { CaptureTime => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InventoryResultItem object:

  $result = $service_obj->Method(...);
  $result->Att1->CaptureTime

=head1 DESCRIPTION

The inventory result item.

=head1 ATTRIBUTES


=head2 CaptureTime => Str

  The time inventory item data was captured.


=head2 B<REQUIRED> Content => ArrayRef[L<Paws::SSM::InventoryItemEntry>]

  Contains all the inventory data of the item type. Results include
attribute names and values.


=head2 ContentHash => Str

  MD5 hash of the inventory item type contents. The content hash is used
to determine whether to update inventory information. The PutInventory
API does not update the inventory item type contents if the MD5 hash
has not changed since last update.


=head2 B<REQUIRED> SchemaVersion => Str

  The schema version for the inventory result item/


=head2 B<REQUIRED> TypeName => Str

  The name of the inventory result item type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

