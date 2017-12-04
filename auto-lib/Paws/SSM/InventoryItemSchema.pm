package Paws::SSM::InventoryItemSchema;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryItemAttribute]', required => 1);
  has DisplayName => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InventoryItemSchema

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InventoryItemSchema object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InventoryItemSchema object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

The inventory item schema definition. Users can use this to compose
inventory query filters.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::SSM::InventoryItemAttribute>]

  The schema attributes for inventory. This contains data type and
attribute name.


=head2 DisplayName => Str

  The alias name of the inventory type. The alias name is used for
display purposes.


=head2 B<REQUIRED> TypeName => Str

  The name of the inventory type. Default inventory item type names start
with AWS. Custom inventory type names will start with Custom. Default
inventory item types include the following: AWS:AWSComponent,
AWS:Application, AWS:InstanceInformation, AWS:Network, and
AWS:WindowsUpdate.


=head2 Version => Str

  The schema version for the inventory item.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

