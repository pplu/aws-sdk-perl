package Paws::DynamoDB::PutRequest;
  use Moose;
  has Item => (is => 'ro', isa => 'Paws::DynamoDB::PutItemInputAttributeMap', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::PutRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::PutRequest object:

  $service_obj->Method(Att1 => { Item => $value, ..., Item => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::PutRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Item

=head1 DESCRIPTION

Represents a request to perform a C<PutItem> operation on an item.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Item => L<Paws::DynamoDB::PutItemInputAttributeMap>

  A map of attribute name to attribute values, representing the primary
key of an item to be processed by C<PutItem>. All of the table's
primary key attributes must be specified, and their data types must
match those of the table's key schema. If any attributes are present in
the item which are part of an index key schema for the table, their
types must match the index key schema.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

