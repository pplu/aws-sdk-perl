package Paws::DynamoDB::DeleteRequest;
  use Moose;
  has Key => (is => 'ro', isa => 'Paws::DynamoDB::Key', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DeleteRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::DeleteRequest object:

  $service_obj->Method(Att1 => { Key => $value, ..., Key => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::DeleteRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Represents a request to perform a C<DeleteItem> operation on an item.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => L<Paws::DynamoDB::Key>

  A map of attribute name to attribute values, representing the primary
key of the item to delete. All of the table's primary key attributes
must be specified, and their data types must match those of the table's
key schema.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

