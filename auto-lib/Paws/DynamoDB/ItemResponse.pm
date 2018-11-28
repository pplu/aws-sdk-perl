package Paws::DynamoDB::ItemResponse;
  use Moose;
  has Item => (is => 'ro', isa => 'Paws::DynamoDB::AttributeMap');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ItemResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ItemResponse object:

  $service_obj->Method(Att1 => { Item => $value, ..., Item => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ItemResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Item

=head1 DESCRIPTION

Details for the requested item.

=head1 ATTRIBUTES


=head2 Item => L<Paws::DynamoDB::AttributeMap>

  Map of attribute data consisting of the data type and attribute value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

