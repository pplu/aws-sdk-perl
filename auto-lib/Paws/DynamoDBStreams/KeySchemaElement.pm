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

A I<KeySchemaElement> represents exactly one attribute of the primary
key. For example, a hash type primary key would be represented by one
I<KeySchemaElement>. A hash-and-range type primary key would require
one I<KeySchemaElement> for the hash attribute, and another
I<KeySchemaElement> for the range attribute.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

  The name of a key attribute.


=head2 B<REQUIRED> KeyType => Str

  The attribute data, consisting of the data type and the attribute value
itself.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

