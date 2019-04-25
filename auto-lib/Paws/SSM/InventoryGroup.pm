package Paws::SSM::InventoryGroup;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryFilter]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InventoryGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InventoryGroup object:

  $service_obj->Method(Att1 => { Filters => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InventoryGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Filters

=head1 DESCRIPTION

A user-defined set of one or more filters on which to aggregate
inventory data. Groups return a count of resources that match and don't
match the specified criteria.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Filters => ArrayRef[L<Paws::SSM::InventoryFilter>]

  Filters define the criteria for the group. The C<matchingCount> field
displays the number of resources that match the criteria. The
C<notMatchingCount> field displays the number of resources that don't
match the criteria.


=head2 B<REQUIRED> Name => Str

  The name of the group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

