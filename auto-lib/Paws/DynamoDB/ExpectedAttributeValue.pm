package Paws::DynamoDB::ExpectedAttributeValue;
  use Moose;
  has AttributeValueList => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::AttributeValue]');
  has ComparisonOperator => (is => 'ro', isa => 'Str');
  has Exists => (is => 'ro', isa => 'Bool');
  has Value => (is => 'ro', isa => 'Paws::DynamoDB::AttributeValue');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ExpectedAttributeValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ExpectedAttributeValue object:

  $service_obj->Method(Att1 => { AttributeValueList => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ExpectedAttributeValue object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeValueList

=head1 DESCRIPTION

Represents a condition to be compared with an attribute value. This
condition can be used with C<DeleteItem>, C<PutItem> or C<UpdateItem>
operations; if the comparison evaluates to true, the operation
succeeds; if not, the operation fails. You can use
C<ExpectedAttributeValue> in one of two different ways:

=over

=item *

Use C<AttributeValueList> to specify one or more values to compare
against an attribute. Use C<ComparisonOperator> to specify how you want
to perform the comparison. If the comparison evaluates to true, then
the conditional operation succeeds.

=item *

Use C<Value> to specify a value that DynamoDB will compare against an
attribute. If the values match, then C<ExpectedAttributeValue>
evaluates to true and the conditional operation succeeds. Optionally,
you can also set C<Exists> to false, indicating that you I<do not>
expect to find the attribute value in the table. In this case, the
conditional operation succeeds only if the comparison evaluates to
false.

=back

C<Value> and C<Exists> are incompatible with C<AttributeValueList> and
C<ComparisonOperator>. Note that if you use both sets of parameters at
once, DynamoDB will return a C<ValidationException> exception.

=head1 ATTRIBUTES


=head2 AttributeValueList => ArrayRef[L<Paws::DynamoDB::AttributeValue>]

  One or more values to evaluate against the supplied attribute. The
number of values in the list depends on the C<ComparisonOperator> being
used.

For type Number, value comparisons are numeric.

String value comparisons for greater than, equals, or less than are
based on ASCII character code values. For example, C<a> is greater than
C<A>, and C<a> is greater than C<B>. For a list of code values, see
http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
(http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters).

For Binary, DynamoDB treats each byte of the binary data as unsigned
when it compares binary values.

For information on specifying data types in JSON, see JSON Data Format
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataFormat.html)
in the I<Amazon DynamoDB Developer Guide>.


=head2 ComparisonOperator => Str

  A comparator for evaluating attributes in the C<AttributeValueList>.
For example, equals, greater than, less than, etc.

The following comparison operators are available:

C<EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS |
NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN>

The following are descriptions of each comparison operator.

=over

=item *

C<EQ> : Equal. C<EQ> is supported for all data types, including lists
and maps.

C<AttributeValueList> can contain only one C<AttributeValue> element of
type String, Number, Binary, String Set, Number Set, or Binary Set. If
an item contains an C<AttributeValue> element of a different type than
the one provided in the request, the value does not match. For example,
C<{"S":"6"}> does not equal C<{"N":"6"}>. Also, C<{"N":"6"}> does not
equal C<{"NS":["6", "2", "1"]}>.

=item *

C<NE> : Not equal. C<NE> is supported for all data types, including
lists and maps.

C<AttributeValueList> can contain only one C<AttributeValue> of type
String, Number, Binary, String Set, Number Set, or Binary Set. If an
item contains an C<AttributeValue> of a different type than the one
provided in the request, the value does not match. For example,
C<{"S":"6"}> does not equal C<{"N":"6"}>. Also, C<{"N":"6"}> does not
equal C<{"NS":["6", "2", "1"]}>.

=item *

C<LE> : Less than or equal.

C<AttributeValueList> can contain only one C<AttributeValue> element of
type String, Number, or Binary (not a set type). If an item contains an
C<AttributeValue> element of a different type than the one provided in
the request, the value does not match. For example, C<{"S":"6"}> does
not equal C<{"N":"6"}>. Also, C<{"N":"6"}> does not compare to
C<{"NS":["6", "2", "1"]}>.

=item *

C<LT> : Less than.

C<AttributeValueList> can contain only one C<AttributeValue> of type
String, Number, or Binary (not a set type). If an item contains an
C<AttributeValue> element of a different type than the one provided in
the request, the value does not match. For example, C<{"S":"6"}> does
not equal C<{"N":"6"}>. Also, C<{"N":"6"}> does not compare to
C<{"NS":["6", "2", "1"]}>.

=item *

C<GE> : Greater than or equal.

C<AttributeValueList> can contain only one C<AttributeValue> element of
type String, Number, or Binary (not a set type). If an item contains an
C<AttributeValue> element of a different type than the one provided in
the request, the value does not match. For example, C<{"S":"6"}> does
not equal C<{"N":"6"}>. Also, C<{"N":"6"}> does not compare to
C<{"NS":["6", "2", "1"]}>.

=item *

C<GT> : Greater than.

C<AttributeValueList> can contain only one C<AttributeValue> element of
type String, Number, or Binary (not a set type). If an item contains an
C<AttributeValue> element of a different type than the one provided in
the request, the value does not match. For example, C<{"S":"6"}> does
not equal C<{"N":"6"}>. Also, C<{"N":"6"}> does not compare to
C<{"NS":["6", "2", "1"]}>.

=item *

C<NOT_NULL> : The attribute exists. C<NOT_NULL> is supported for all
data types, including lists and maps.

This operator tests for the existence of an attribute, not its data
type. If the data type of attribute "C<a>" is null, and you evaluate it
using C<NOT_NULL>, the result is a Boolean C<true>. This result is
because the attribute "C<a>" exists; its data type is not relevant to
the C<NOT_NULL> comparison operator.

=item *

C<NULL> : The attribute does not exist. C<NULL> is supported for all
data types, including lists and maps.

This operator tests for the nonexistence of an attribute, not its data
type. If the data type of attribute "C<a>" is null, and you evaluate it
using C<NULL>, the result is a Boolean C<false>. This is because the
attribute "C<a>" exists; its data type is not relevant to the C<NULL>
comparison operator.

=item *

C<CONTAINS> : Checks for a subsequence, or value in a set.

C<AttributeValueList> can contain only one C<AttributeValue> element of
type String, Number, or Binary (not a set type). If the target
attribute of the comparison is of type String, then the operator checks
for a substring match. If the target attribute of the comparison is of
type Binary, then the operator looks for a subsequence of the target
that matches the input. If the target attribute of the comparison is a
set ("C<SS>", "C<NS>", or "C<BS>"), then the operator evaluates to true
if it finds an exact match with any member of the set.

CONTAINS is supported for lists: When evaluating "C<a CONTAINS b>",
"C<a>" can be a list; however, "C<b>" cannot be a set, a map, or a
list.

=item *

C<NOT_CONTAINS> : Checks for absence of a subsequence, or absence of a
value in a set.

C<AttributeValueList> can contain only one C<AttributeValue> element of
type String, Number, or Binary (not a set type). If the target
attribute of the comparison is a String, then the operator checks for
the absence of a substring match. If the target attribute of the
comparison is Binary, then the operator checks for the absence of a
subsequence of the target that matches the input. If the target
attribute of the comparison is a set ("C<SS>", "C<NS>", or "C<BS>"),
then the operator evaluates to true if it I<does not> find an exact
match with any member of the set.

NOT_CONTAINS is supported for lists: When evaluating "C<a NOT CONTAINS
b>", "C<a>" can be a list; however, "C<b>" cannot be a set, a map, or a
list.

=item *

C<BEGINS_WITH> : Checks for a prefix.

C<AttributeValueList> can contain only one C<AttributeValue> of type
String or Binary (not a Number or a set type). The target attribute of
the comparison must be of type String or Binary (not a Number or a set
type).

=item *

C<IN> : Checks for matching elements in a list.

C<AttributeValueList> can contain one or more C<AttributeValue>
elements of type String, Number, or Binary. These attributes are
compared against an existing attribute of an item. If any elements of
the input are equal to the item attribute, the expression evaluates to
true.

=item *

C<BETWEEN> : Greater than or equal to the first value, and less than or
equal to the second value.

C<AttributeValueList> must contain two C<AttributeValue> elements of
the same type, either String, Number, or Binary (not a set type). A
target attribute matches if the target value is greater than, or equal
to, the first element and less than, or equal to, the second element.
If an item contains an C<AttributeValue> element of a different type
than the one provided in the request, the value does not match. For
example, C<{"S":"6"}> does not compare to C<{"N":"6"}>. Also,
C<{"N":"6"}> does not compare to C<{"NS":["6", "2", "1"]}>

=back



=head2 Exists => Bool

  Causes DynamoDB to evaluate the value before attempting a conditional
operation:

=over

=item *

If C<Exists> is C<true>, DynamoDB will check to see if that attribute
value already exists in the table. If it is found, then the operation
succeeds. If it is not found, the operation fails with a
C<ConditionCheckFailedException>.

=item *

If C<Exists> is C<false>, DynamoDB assumes that the attribute value
does not exist in the table. If in fact the value does not exist, then
the assumption is valid and the operation succeeds. If the value is
found, despite the assumption that it does not exist, the operation
fails with a C<ConditionCheckFailedException>.

=back

The default setting for C<Exists> is C<true>. If you supply a C<Value>
all by itself, DynamoDB assumes the attribute exists: You don't have to
set C<Exists> to C<true>, because it is implied.

DynamoDB returns a C<ValidationException> if:

=over

=item *

C<Exists> is C<true> but there is no C<Value> to check. (You expect a
value to exist, but don't specify what that value is.)

=item *

C<Exists> is C<false> but you also provide a C<Value>. (You cannot
expect an attribute to have a value, while also expecting it not to
exist.)

=back



=head2 Value => L<Paws::DynamoDB::AttributeValue>

  Represents the data for the expected attribute.

Each attribute value is described as a name-value pair. The name is the
data type, and the value is the data itself.

For more information, see Data Types
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes)
in the I<Amazon DynamoDB Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

