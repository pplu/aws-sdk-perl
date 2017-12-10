package Paws::DAX::NodeTypeSpecificValue;
  use Moose;
  has NodeType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::NodeTypeSpecificValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DAX::NodeTypeSpecificValue object:

  $service_obj->Method(Att1 => { NodeType => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DAX::NodeTypeSpecificValue object:

  $result = $service_obj->Method(...);
  $result->Att1->NodeType

=head1 DESCRIPTION

Represents a parameter value that is applicable to a particular node
type.

=head1 ATTRIBUTES


=head2 NodeType => Str

  A node type to which the parameter value applies.


=head2 Value => Str

  The parameter value for this node type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

