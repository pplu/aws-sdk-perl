package Paws::EC2::RouteTableAssociation;
  use Moose;
  has Main => (is => 'ro', isa => 'Bool', request_name => 'main', traits => ['NameInRequest']);
  has RouteTableAssociationId => (is => 'ro', isa => 'Str', request_name => 'routeTableAssociationId', traits => ['NameInRequest']);
  has RouteTableId => (is => 'ro', isa => 'Str', request_name => 'routeTableId', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RouteTableAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RouteTableAssociation object:

  $service_obj->Method(Att1 => { Main => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RouteTableAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->Main

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Main => Bool

  Indicates whether this is the main route table.


=head2 RouteTableAssociationId => Str

  The ID of the association between a route table and a subnet.


=head2 RouteTableId => Str

  The ID of the route table.


=head2 SubnetId => Str

  The ID of the subnet. A subnet ID is not returned for an implicit
association.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
