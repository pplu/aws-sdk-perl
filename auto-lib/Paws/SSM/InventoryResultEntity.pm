package Paws::SSM::InventoryResultEntity;
  use Moose;
  has Data => (is => 'ro', isa => 'Paws::SSM::InventoryResultItemMap');
  has Id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InventoryResultEntity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InventoryResultEntity object:

  $service_obj->Method(Att1 => { Data => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InventoryResultEntity object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

Inventory query results.

=head1 ATTRIBUTES


=head2 Data => L<Paws::SSM::InventoryResultItemMap>

  The data section in the inventory result entity JSON.


=head2 Id => Str

  ID of the inventory result entity. For example, for managed instance
inventory the result will be the managed instance ID. For EC2 instance
inventory, the result will be the instance ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

