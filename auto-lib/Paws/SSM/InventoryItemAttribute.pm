package Paws::SSM::InventoryItemAttribute;
  use Moose;
  has DataType => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InventoryItemAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InventoryItemAttribute object:

  $service_obj->Method(Att1 => { DataType => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InventoryItemAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->DataType

=head1 DESCRIPTION

Attributes are the entries within the inventory item content. It
contains name and value.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataType => Str

  The data type of the inventory item attribute.


=head2 B<REQUIRED> Name => Str

  Name of the inventory item attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

