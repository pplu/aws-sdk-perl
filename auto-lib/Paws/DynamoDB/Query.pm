
package Paws::DynamoDB::Query;
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ConditionalOperator => (is => 'ro', isa => 'Str');
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has ExclusiveStartKey => (is => 'ro', isa => 'Paws::DynamoDB::Key');
  has ExpressionAttributeNames => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeNameMap');
  has ExpressionAttributeValues => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeValueMap');
  has FilterExpression => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str');
  has KeyConditionExpression => (is => 'ro', isa => 'Str');
  has KeyConditions => (is => 'ro', isa => 'Paws::DynamoDB::KeyConditions');
  has Limit => (is => 'ro', isa => 'Int');
  has ProjectionExpression => (is => 'ro', isa => 'Str');
  has QueryFilter => (is => 'ro', isa => 'Paws::DynamoDB::FilterConditionMap');
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ScanIndexForward => (is => 'ro', isa => 'Bool');
  has Select => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Query');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::QueryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::Query - Arguments for method Query on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Query on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method Query.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Query.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
   # To query an item
   # This example queries items in the Music table. The table has a partition
   # key and sort key (Artist and SongTitle), but this query only specifies the
   # partition key value. It returns song titles by the artist named "No One You
   # Know".
    my $QueryOutput = $dynamodb->Query(
      {
        'ExpressionAttributeValues' => {
          ':v1' => {
            'S' => 'No One You Know'
          }
        },
        'KeyConditionExpression' => 'Artist = :v1',
        'ProjectionExpression'   => 'SongTitle',
        'TableName'              => 'Music'
      }
    );

    # Results:
    my $ConsumedCapacity = $QueryOutput->ConsumedCapacity;
    my $Count            = $QueryOutput->Count;
    my $Items            = $QueryOutput->Items;
    my $ScannedCount     = $QueryOutput->ScannedCount;

    # Returns a L<Paws::DynamoDB::QueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/Query>

=head1 ATTRIBUTES


=head2 AttributesToGet => ArrayRef[Str|Undef]

This is a legacy parameter. Use C<ProjectionExpression> instead. For
more information, see AttributesToGet
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 ConditionalOperator => Str

This is a legacy parameter. Use C<FilterExpression> instead. For more
information, see ConditionalOperator
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html)
in the I<Amazon DynamoDB Developer Guide>.

Valid values are: C<"AND">, C<"OR">

=head2 ConsistentRead => Bool

Determines the read consistency model: If set to C<true>, then the
operation uses strongly consistent reads; otherwise, the operation uses
eventually consistent reads.

Strongly consistent reads are not supported on global secondary
indexes. If you query a global secondary index with C<ConsistentRead>
set to C<true>, you will receive a C<ValidationException>.



=head2 ExclusiveStartKey => L<Paws::DynamoDB::Key>

The primary key of the first item that this operation will evaluate.
Use the value that was returned for C<LastEvaluatedKey> in the previous
operation.

The data type for C<ExclusiveStartKey> must be String, Number or
Binary. No set data types are allowed.



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



=head2 FilterExpression => Str

A string that contains conditions that DynamoDB applies after the
C<Query> operation, but before the data is returned to you. Items that
do not satisfy the C<FilterExpression> criteria are not returned.

A C<FilterExpression> does not allow key attributes. You cannot define
a filter expression based on a partition key or a sort key.

A C<FilterExpression> is applied after the items have already been
read; the process of filtering does not consume any additional read
capacity units.

For more information, see Filter Expressions
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults)
in the I<Amazon DynamoDB Developer Guide>.



=head2 IndexName => Str

The name of an index to query. This index can be any local secondary
index or global secondary index on the table. Note that if you use the
C<IndexName> parameter, you must also provide C<TableName.>



=head2 KeyConditionExpression => Str

The condition that specifies the key value(s) for items to be retrieved
by the C<Query> action.

The condition must perform an equality test on a single partition key
value.

The condition can optionally perform one of several comparison tests on
a single sort key value. This allows C<Query> to retrieve one item with
a given partition key value and sort key value, or several items that
have the same partition key value but different sort key values.

The partition key equality test is required, and must be specified in
the following format:

C<partitionKeyName> I<=> C<:partitionkeyval>

If you also want to provide a condition for the sort key, it must be
combined using C<AND> with the condition for the sort key. Following is
an example, using the B<=> comparison operator for the sort key:

C<partitionKeyName> C<=> C<:partitionkeyval> C<AND> C<sortKeyName> C<=>
C<:sortkeyval>

Valid comparisons for the sort key condition are as follows:

=over

=item *

C<sortKeyName> C<=> C<:sortkeyval> - true if the sort key value is
equal to C<:sortkeyval>.

=item *

C<sortKeyName> C<E<lt>> C<:sortkeyval> - true if the sort key value is
less than C<:sortkeyval>.

=item *

C<sortKeyName> C<E<lt>=> C<:sortkeyval> - true if the sort key value is
less than or equal to C<:sortkeyval>.

=item *

C<sortKeyName> C<E<gt>> C<:sortkeyval> - true if the sort key value is
greater than C<:sortkeyval>.

=item *

C<sortKeyName> C<E<gt>= > C<:sortkeyval> - true if the sort key value
is greater than or equal to C<:sortkeyval>.

=item *

C<sortKeyName> C<BETWEEN> C<:sortkeyval1> C<AND> C<:sortkeyval2> - true
if the sort key value is greater than or equal to C<:sortkeyval1>, and
less than or equal to C<:sortkeyval2>.

=item *

C<begins_with (> C<sortKeyName>, C<:sortkeyval> C<)> - true if the sort
key value begins with a particular operand. (You cannot use this
function with a sort key that is of type Number.) Note that the
function name C<begins_with> is case-sensitive.

=back

Use the C<ExpressionAttributeValues> parameter to replace tokens such
as C<:partitionval> and C<:sortval> with actual values at runtime.

You can optionally use the C<ExpressionAttributeNames> parameter to
replace the names of the partition key and sort key with placeholder
tokens. This option might be necessary if an attribute name conflicts
with a DynamoDB reserved word. For example, the following
C<KeyConditionExpression> parameter causes an error because I<Size> is
a reserved word:

=over

=item *

C<Size = :myval>

=back

To work around this, define a placeholder (such a C<#S>) to represent
the attribute name I<Size>. C<KeyConditionExpression> then is as
follows:

=over

=item *

C<#S = :myval>

=back

For a list of reserved words, see Reserved Words
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html)
in the I<Amazon DynamoDB Developer Guide>.

For more information on C<ExpressionAttributeNames> and
C<ExpressionAttributeValues>, see Using Placeholders for Attribute
Names and Values
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 KeyConditions => L<Paws::DynamoDB::KeyConditions>

This is a legacy parameter. Use C<KeyConditionExpression> instead. For
more information, see KeyConditions
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 Limit => Int

The maximum number of items to evaluate (not necessarily the number of
matching items). If DynamoDB processes the number of items up to the
limit while processing the results, it stops the operation and returns
the matching values up to that point, and a key in C<LastEvaluatedKey>
to apply in a subsequent operation, so that you can pick up where you
left off. Also, if the processed data set size exceeds 1 MB before
DynamoDB reaches this limit, it stops the operation and returns the
matching values up to the limit, and a key in C<LastEvaluatedKey> to
apply in a subsequent operation to continue the operation. For more
information, see Query and Scan
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 ProjectionExpression => Str

A string that identifies one or more attributes to retrieve from the
table. These attributes can include scalars, sets, or elements of a
JSON document. The attributes in the expression must be separated by
commas.

If no attribute names are specified, then all attributes will be
returned. If any of the requested attributes are not found, they will
not appear in the result.

For more information, see Accessing Item Attributes
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 QueryFilter => L<Paws::DynamoDB::FilterConditionMap>

This is a legacy parameter. Use C<FilterExpression> instead. For more
information, see QueryFilter
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 ReturnConsumedCapacity => Str



Valid values are: C<"INDEXES">, C<"TOTAL">, C<"NONE">

=head2 ScanIndexForward => Bool

Specifies the order for index traversal: If C<true> (default), the
traversal is performed in ascending order; if C<false>, the traversal
is performed in descending order.

Items with the same partition key value are stored in sorted order by
sort key. If the sort key data type is Number, the results are stored
in numeric order. For type String, the results are stored in order of
UTF-8 bytes. For type Binary, DynamoDB treats each byte of the binary
data as unsigned.

If C<ScanIndexForward> is C<true>, DynamoDB returns the results in the
order in which they are stored (by sort key value). This is the default
behavior. If C<ScanIndexForward> is C<false>, DynamoDB reads the
results in reverse order by sort key value, and then returns the
results to the client.



=head2 Select => Str

The attributes to be returned in the result. You can retrieve all item
attributes, specific item attributes, the count of matching items, or
in the case of an index, some or all of the attributes projected into
the index.

=over

=item *

C<ALL_ATTRIBUTES> - Returns all of the item attributes from the
specified table or index. If you query a local secondary index, then
for each matching item in the index DynamoDB will fetch the entire item
from the parent table. If the index is configured to project all item
attributes, then all of the data can be obtained from the local
secondary index, and no fetching is required.

=item *

C<ALL_PROJECTED_ATTRIBUTES> - Allowed only when querying an index.
Retrieves all attributes that have been projected into the index. If
the index is configured to project all attributes, this return value is
equivalent to specifying C<ALL_ATTRIBUTES>.

=item *

C<COUNT> - Returns the number of matching items, rather than the
matching items themselves.

=item *

C<SPECIFIC_ATTRIBUTES> - Returns only the attributes listed in
C<AttributesToGet>. This return value is equivalent to specifying
C<AttributesToGet> without specifying any value for C<Select>.

If you query or scan a local secondary index and request only
attributes that are projected into that index, the operation will read
only the index and not the table. If any of the requested attributes
are not projected into the local secondary index, DynamoDB will fetch
each of these attributes from the parent table. This extra fetching
incurs additional throughput cost and latency.

If you query or scan a global secondary index, you can only request
attributes that are projected into the index. Global secondary index
queries cannot fetch attributes from the parent table.

=back

If neither C<Select> nor C<AttributesToGet> are specified, DynamoDB
defaults to C<ALL_ATTRIBUTES> when accessing a table, and
C<ALL_PROJECTED_ATTRIBUTES> when accessing an index. You cannot use
both C<Select> and C<AttributesToGet> together in a single request,
unless the value for C<Select> is C<SPECIFIC_ATTRIBUTES>. (This usage
is equivalent to specifying C<AttributesToGet> without any value for
C<Select>.)

If you use the C<ProjectionExpression> parameter, then the value for
C<Select> can only be C<SPECIFIC_ATTRIBUTES>. Any other value for
C<Select> will return an error.

Valid values are: C<"ALL_ATTRIBUTES">, C<"ALL_PROJECTED_ATTRIBUTES">, C<"SPECIFIC_ATTRIBUTES">, C<"COUNT">

=head2 B<REQUIRED> TableName => Str

The name of the table containing the requested items.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Query in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

