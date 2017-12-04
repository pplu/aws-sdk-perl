package Paws::DynamoDBStreams::KeySchemaElement;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has KeyType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::KeySchemaElement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDBStreams::KeySchemaElement object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., KeyType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDBStreams::KeySchemaElement object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

Represents I<a single element> of a key schema. A key schema specifies
the attributes that make up the primary key of a table, or the key
attributes of an index.

A C<KeySchemaElement> represents exactly one attribute of the primary
key. For example, a simple primary key (partition key) would be
represented by one C<KeySchemaElement>. A composite primary key
(partition key and sort key) would require one C<KeySchemaElement> for
the partition key, and another C<KeySchemaElement> for the sort key.

The partition key of an item is also known as its I<hash attribute>.
The term "hash attribute" derives from DynamoDB's usage of an internal
hash function to evenly distribute data items across partitions, based
on their partition key values.

The sort key of an item is also known as its I<range attribute>. The
term "range attribute" derives from the way DynamoDB stores items with
the same partition key physically close together, in sorted order by
the sort key value.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

  The name of a key attribute.


=head2 B<REQUIRED> KeyType => Str

  The attribute data, consisting of the data type and the attribute value
itself.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

