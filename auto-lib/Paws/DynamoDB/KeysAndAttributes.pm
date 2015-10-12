package Paws::DynamoDB::KeysAndAttributes;
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has ExpressionAttributeNames => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeNameMap');
  has Keys => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::Key]', required => 1);
  has ProjectionExpression => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::KeysAndAttributes

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::KeysAndAttributes object:

  $service_obj->Method(Att1 => { AttributesToGet => $value, ..., ProjectionExpression => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::KeysAndAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributesToGet

=head1 ATTRIBUTES

=head2 AttributesToGet => ArrayRef[Str]

  

One or more attributes to retrieve from the table or index. If no
attribute names are specified then all attributes will be returned. If
any of the specified attributes are not found, they will not appear in
the result.










=head2 ConsistentRead => Bool

  

The consistency of a read operation. If set to C<true>, then a strongly
consistent read is used; otherwise, an eventually consistent read is
used.










=head2 ExpressionAttributeNames => Paws::DynamoDB::ExpressionAttributeNameMap

  

One or more substitution tokens for attribute names in an expression.
The following are some use cases for using I<ExpressionAttributeNames>:

=over

=item *

To access an attribute whose name conflicts with a DynamoDB reserved
word.

=item *

To create a placeholder for repeating occurrences of an attribute name
in an expression.

=item *

To prevent special characters in an attribute name from being
misinterpreted in an expression.

=back

Use the hash character in an expression to dereference an attribute
name. For example, consider the following attribute name:

=over

=item *

C<Percentile>

=back

The name of this attribute conflicts with a reserved word, so it cannot
be used directly in an expression. (For the complete list of reserved
words, see Reserved Words in the I<Amazon DynamoDB Developer Guide>).
To work around this, you could specify the following for
I<ExpressionAttributeNames>:

=over

=item *

{"

=back

You could then use this substitution in an expression, as in this
example:

=over

=item *



=back

Tokens that begin with the B<:> character are I<expression attribute
values>, which are placeholders for the actual value at runtime.

For more information on expression attribute names, see Accessing Item
Attributes in the I<Amazon DynamoDB Developer Guide>.










=head2 B<REQUIRED> Keys => ArrayRef[Paws::DynamoDB::Key]

  

The primary key attribute values that define the items and the
attributes associated with the items.










=head2 ProjectionExpression => Str

  

A string that identifies one or more attributes to retrieve from the
table. These attributes can include scalars, sets, or elements of a
JSON document. The attributes in the I<ProjectionExpression> must be
separated by commas.

If no attribute names are specified, then all attributes will be
returned. If any of the requested attributes are not found, they will
not appear in the result.

For more information, see Accessing Item Attributes in the I<Amazon
DynamoDB Developer Guide>.

I<ProjectionExpression> replaces the legacy I<AttributesToGet>
parameter.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

