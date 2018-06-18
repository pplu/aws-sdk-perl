
package Paws::DynamoDB::UpdateItem;
  use Moose;
  has AttributeUpdates => (is => 'ro', isa => 'Paws::DynamoDB::AttributeUpdates');
  has ConditionalOperator => (is => 'ro', isa => 'Str');
  has ConditionExpression => (is => 'ro', isa => 'Str');
  has Expected => (is => 'ro', isa => 'Paws::DynamoDB::ExpectedAttributeMap');
  has ExpressionAttributeNames => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeNameMap');
  has ExpressionAttributeValues => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeValueMap');
  has Key => (is => 'ro', isa => 'Paws::DynamoDB::Key', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');
  has ReturnValues => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateExpression => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::UpdateItemOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateItem - Arguments for method UpdateItem on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateItem on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method UpdateItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateItem.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
   # To update an item in a table
   # This example updates an item in the Music table. It adds a new attribute
   # (Year) and modifies the AlbumTitle attribute.  All of the attributes in the
   # item, as they appear after the update, are returned in the response.
    my $UpdateItemOutput = $dynamodb->UpdateItem(
      {
        'ExpressionAttributeNames' => {
          '#AT' => 'AlbumTitle',
          '#Y'  => 'Year'
        },
        'ExpressionAttributeValues' => {
          ':t' => {
            'S' => 'Louder Than Ever'
          },
          ':y' => {
            'N' => 2015
          }
        },
        'Key' => {
          'Artist' => {
            'S' => 'Acme Band'
          },
          'SongTitle' => {
            'S' => 'Happy Day'
          }
        },
        'ReturnValues'     => 'ALL_NEW',
        'TableName'        => 'Music',
        'UpdateExpression' => 'SET #Y = :y, #AT = :t'
      }
    );

    # Results:
    my $Attributes = $UpdateItemOutput->Attributes;

    # Returns a L<Paws::DynamoDB::UpdateItemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/UpdateItem>

=head1 ATTRIBUTES


=head2 AttributeUpdates => L<Paws::DynamoDB::AttributeUpdates>

This is a legacy parameter. Use C<UpdateExpression> instead. For more
information, see AttributeUpdates
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 ConditionalOperator => Str

This is a legacy parameter. Use C<ConditionExpression> instead. For
more information, see ConditionalOperator
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html)
in the I<Amazon DynamoDB Developer Guide>.

Valid values are: C<"AND">, C<"OR">

=head2 ConditionExpression => Str

A condition that must be satisfied in order for a conditional update to
succeed.

An expression can contain any of the following:

=over

=item *

Functions: C<attribute_exists | attribute_not_exists | attribute_type |
contains | begins_with | size>

These function names are case-sensitive.

=item *

Comparison operators: C<= | E<lt>E<gt> | E<lt> | E<gt> | E<lt>= |
E<gt>= | BETWEEN | IN>

=item *

Logical operators: C<AND | OR | NOT>

=back

For more information on condition expressions, see Specifying
Conditions
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 Expected => L<Paws::DynamoDB::ExpectedAttributeMap>

This is a legacy parameter. Use C<ConditionExpression> instead. For
more information, see Expected
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 ExpressionAttributeNames => L<Paws::DynamoDB::ExpressionAttributeNameMap>

One or more substitution tokens for attribute names in an expression.
The following are some use cases for using C<ExpressionAttributeNames>:

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

Use the B<#> character in an expression to dereference an attribute
name. For example, consider the following attribute name:

=over

=item *

C<Percentile>

=back

The name of this attribute conflicts with a reserved word, so it cannot
be used directly in an expression. (For the complete list of reserved
words, see Reserved Words
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html)
in the I<Amazon DynamoDB Developer Guide>). To work around this, you
could specify the following for C<ExpressionAttributeNames>:

=over

=item *

C<{"#P":"Percentile"}>

=back

You could then use this substitution in an expression, as in this
example:

=over

=item *

C<#P = :val>

=back

Tokens that begin with the B<:> character are I<expression attribute
values>, which are placeholders for the actual value at runtime.

For more information on expression attribute names, see Accessing Item
Attributes
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 ExpressionAttributeValues => L<Paws::DynamoDB::ExpressionAttributeValueMap>

One or more values that can be substituted in an expression.

Use the B<:> (colon) character in an expression to dereference an
attribute value. For example, suppose that you wanted to check whether
the value of the I<ProductStatus> attribute was one of the following:

C<Available | Backordered | Discontinued>

You would first need to specify C<ExpressionAttributeValues> as
follows:

C<{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
":disc":{"S":"Discontinued"} }>

You could then use these values in an expression, such as this:

C<ProductStatus IN (:avail, :back, :disc)>

For more information on expression attribute values, see Specifying
Conditions
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 B<REQUIRED> Key => L<Paws::DynamoDB::Key>

The primary key of the item to be updated. Each element consists of an
attribute name and a value for that attribute.

For the primary key, you must provide all of the attributes. For
example, with a simple primary key, you only need to provide a value
for the partition key. For a composite primary key, you must provide
values for both the partition key and the sort key.



=head2 ReturnConsumedCapacity => Str



Valid values are: C<"INDEXES">, C<"TOTAL">, C<"NONE">

=head2 ReturnItemCollectionMetrics => Str

Determines whether item collection metrics are returned. If set to
C<SIZE>, the response includes statistics about item collections, if
any, that were modified during the operation are returned in the
response. If set to C<NONE> (the default), no statistics are returned.

Valid values are: C<"SIZE">, C<"NONE">

=head2 ReturnValues => Str

Use C<ReturnValues> if you want to get the item attributes as they
appear before or after they are updated. For C<UpdateItem>, the valid
values are:

=over

=item *

C<NONE> - If C<ReturnValues> is not specified, or if its value is
C<NONE>, then nothing is returned. (This setting is the default for
C<ReturnValues>.)

=item *

C<ALL_OLD> - Returns all of the attributes of the item, as they
appeared before the UpdateItem operation.

=item *

C<UPDATED_OLD> - Returns only the updated attributes, as they appeared
before the UpdateItem operation.

=item *

C<ALL_NEW> - Returns all of the attributes of the item, as they appear
after the UpdateItem operation.

=item *

C<UPDATED_NEW> - Returns only the updated attributes, as they appear
after the UpdateItem operation.

=back

There is no additional cost associated with requesting a return value
aside from the small network and processing overhead of receiving a
larger response. No read capacity units are consumed.

The values returned are strongly consistent.

Valid values are: C<"NONE">, C<"ALL_OLD">, C<"UPDATED_OLD">, C<"ALL_NEW">, C<"UPDATED_NEW">

=head2 B<REQUIRED> TableName => Str

The name of the table containing the item to update.



=head2 UpdateExpression => Str

An expression that defines one or more attributes to be updated, the
action to be performed on them, and new value(s) for them.

The following action values are available for C<UpdateExpression>.

=over

=item *

C<SET> - Adds one or more attributes and values to an item. If any of
these attribute already exist, they are replaced by the new values. You
can also use C<SET> to add or subtract from an attribute that is of
type Number. For example: C<SET myNum = myNum + :val>

C<SET> supports the following functions:

=over

=item *

C<if_not_exists (path, operand)> - if the item does not contain an
attribute at the specified path, then C<if_not_exists> evaluates to
operand; otherwise, it evaluates to path. You can use this function to
avoid overwriting an attribute that may already be present in the item.

=item *

C<list_append (operand, operand)> - evaluates to a list with a new
element added to it. You can append the new element to the start or the
end of the list by reversing the order of the operands.

=back

These function names are case-sensitive.

=item *

C<REMOVE> - Removes one or more attributes from an item.

=item *

C<ADD> - Adds the specified value to the item, if the attribute does
not already exist. If the attribute does exist, then the behavior of
C<ADD> depends on the data type of the attribute:

=over

=item *

If the existing attribute is a number, and if C<Value> is also a
number, then C<Value> is mathematically added to the existing
attribute. If C<Value> is a negative number, then it is subtracted from
the existing attribute.

If you use C<ADD> to increment or decrement a number value for an item
that doesn't exist before the update, DynamoDB uses C<0> as the initial
value.

Similarly, if you use C<ADD> for an existing item to increment or
decrement an attribute value that doesn't exist before the update,
DynamoDB uses C<0> as the initial value. For example, suppose that the
item you want to update doesn't have an attribute named I<itemcount>,
but you decide to C<ADD> the number C<3> to this attribute anyway.
DynamoDB will create the I<itemcount> attribute, set its initial value
to C<0>, and finally add C<3> to it. The result will be a new
I<itemcount> attribute in the item, with a value of C<3>.

=item *

If the existing data type is a set and if C<Value> is also a set, then
C<Value> is added to the existing set. For example, if the attribute
value is the set C<[1,2]>, and the C<ADD> action specified C<[3]>, then
the final attribute value is C<[1,2,3]>. An error occurs if an C<ADD>
action is specified for a set attribute and the attribute type
specified does not match the existing set type.

Both sets must have the same primitive data type. For example, if the
existing data type is a set of strings, the C<Value> must also be a set
of strings.

=back

The C<ADD> action only supports Number and set data types. In addition,
C<ADD> can only be used on top-level attributes, not nested attributes.

=item *

C<DELETE> - Deletes an element from a set.

If a set of values is specified, then those values are subtracted from
the old set. For example, if the attribute value was the set C<[a,b,c]>
and the C<DELETE> action specifies C<[a,c]>, then the final attribute
value is C<[b]>. Specifying an empty set is an error.

The C<DELETE> action only supports set data types. In addition,
C<DELETE> can only be used on top-level attributes, not nested
attributes.

=back

You can have many actions in a single expression, such as the
following: C<SET a=:value1, b=:value2 DELETE :value3, :value4, :value5>

For more information on update expressions, see Modifying Items and
Attributes
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html)
in the I<Amazon DynamoDB Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateItem in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

