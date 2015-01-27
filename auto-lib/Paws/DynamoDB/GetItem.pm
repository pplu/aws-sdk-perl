
package Paws::DynamoDB::GetItem {
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has ExpressionAttributeNames => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeNameMap');
  has Key => (is => 'ro', isa => 'Paws::DynamoDB::Key', required => 1);
  has ProjectionExpression => (is => 'ro', isa => 'Str');
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::GetItemOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GetItem - Arguments for method GetItem on Paws::DynamoDB

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetItem on the 
Amazon DynamoDB service. Use the attributes of this class
as arguments to method GetItem.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to GetItem.

As an example:

  $service_obj->GetItem(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AttributesToGet => ArrayRef[Str]

  

There is a newer parameter available. Use I<ProjectionExpression>
instead. Note that if you use I<AttributesToGet> and
I<ProjectionExpression> at the same time, DynamoDB will return a
I<ValidationException> exception.

This parameter allows you to retrieve lists or maps; however, it cannot
retrieve individual list or map elements.

The names of one or more attributes to retrieve. If no attribute names
are specified, then all attributes will be returned. If any of the
requested attributes are not found, they will not appear in the result.

Note that I<AttributesToGet> has no effect on provisioned throughput
consumption. DynamoDB determines capacity units consumed based on item
size, not on the amount of data that is returned to an application.










=head2 ConsistentRead => Bool

  

A value that if set to C<true>, then the operation uses strongly
consistent reads; otherwise, eventually consistent reads are used.










=head2 ExpressionAttributeNames => Paws::DynamoDB::ExpressionAttributeNameMap

  

One or more substitution tokens for simplifying complex expressions.
The following are some use cases for using I<ExpressionAttributeNames>:

=over

=item *

To shorten an attribute name that is very long or unwieldy in an
expression.

=item *

To create a placeholder for repeating occurrences of an attribute name
in an expression.

=item *

To prevent special characters in an attribute name from being
misinterpreted in an expression.

=back

Use the B<
name. For example, consider the following expression:

=over

=item *

C<order.customerInfo.LastName = "Smith" OR order.customerInfo.LastName
= "Jones">

=back

Now suppose that you specified the following for
I<ExpressionAttributeNames>:

=over

=item *

C<{"

=back

The expression can now be simplified as follows:

=over

=item *

C<

=back

For more information on expression attribute names, go to Accessing
Item Attributes in the I<Amazon DynamoDB Developer Guide>.










=head2 B<REQUIRED> Key => Paws::DynamoDB::Key

  

A map of attribute names to I<AttributeValue> objects, representing the
primary key of the item to retrieve.

For the primary key, you must provide all of the attributes. For
example, with a hash type primary key, you only need to specify the
hash attribute. For a hash-and-range type primary key, you must specify
both the hash attribute and the range attribute.










=head2 ProjectionExpression => Str

  

A string that identifies one or more attributes to retrieve from the
table. These attributes can include scalars, sets, or elements of a
JSON document. The attributes in the expression must be separated by
commas.

If no attribute names are specified, then all attributes will be
returned. If any of the requested attributes are not found, they will
not appear in the result.

For more information on projection expressions, go to Accessing Item
Attributes in the I<Amazon DynamoDB Developer Guide>.










=head2 ReturnConsumedCapacity => Str

  

=head2 B<REQUIRED> TableName => Str

  

The name of the table containing the requested item.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for GetItem in Paws::DynamoDB

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

