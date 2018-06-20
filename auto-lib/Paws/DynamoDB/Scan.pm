
package Paws::DynamoDB::Scan;
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ConditionalOperator => (is => 'ro', isa => 'Str');
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has ExclusiveStartKey => (is => 'ro', isa => 'Paws::DynamoDB::Key');
  has ExpressionAttributeNames => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeNameMap');
  has ExpressionAttributeValues => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeValueMap');
  has FilterExpression => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has ProjectionExpression => (is => 'ro', isa => 'Str');
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ScanFilter => (is => 'ro', isa => 'Paws::DynamoDB::FilterConditionMap');
  has Segment => (is => 'ro', isa => 'Int');
  has Select => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has TotalSegments => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Scan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::ScanOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::Scan - Arguments for method Scan on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Scan on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method Scan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Scan.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    # To scan a table
    # This example scans the entire Music table, and then narrows the results to
    # songs by the artist "No One You Know". For each item, only the album title
    # and song title are returned.
    my $ScanOutput = $dynamodb->Scan(
      {
        'ExpressionAttributeNames' => {
          'AT' => 'AlbumTitle',
          'ST' => 'SongTitle'
        },
        'ExpressionAttributeValues' => {
          ':a' => {
            'S' => 'No One You Know'
          }
        },
        'FilterExpression'     => 'Artist = :a',
        'ProjectionExpression' => '#ST, #AT',
        'TableName'            => 'Music'
      }
    );

    # Results:
    my $ConsumedCapacity = $ScanOutput->ConsumedCapacity;
    my $Count            = $ScanOutput->Count;
    my $Items            = $ScanOutput->Items;
    my $ScannedCount     = $ScanOutput->ScannedCount;

    # Returns a L<Paws::DynamoDB::ScanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/Scan>

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

A Boolean value that determines the read consistency model during the
scan:

=over

=item *

If C<ConsistentRead> is C<false>, then the data returned from C<Scan>
might not contain the results from other recently completed write
operations (PutItem, UpdateItem or DeleteItem).

=item *

If C<ConsistentRead> is C<true>, then all of the write operations that
completed before the C<Scan> began are guaranteed to be contained in
the C<Scan> response.

=back

The default setting for C<ConsistentRead> is C<false>.

The C<ConsistentRead> parameter is not supported on global secondary
indexes. If you scan a global secondary index with C<ConsistentRead>
set to true, you will receive a C<ValidationException>.



=head2 ExclusiveStartKey => L<Paws::DynamoDB::Key>

The primary key of the first item that this operation will evaluate.
Use the value that was returned for C<LastEvaluatedKey> in the previous
operation.

The data type for C<ExclusiveStartKey> must be String, Number or
Binary. No set data types are allowed.

In a parallel scan, a C<Scan> request that includes
C<ExclusiveStartKey> must specify the same segment whose previous
C<Scan> returned the corresponding value of C<LastEvaluatedKey>.



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
C<Scan> operation, but before the data is returned to you. Items that
do not satisfy the C<FilterExpression> criteria are not returned.

A C<FilterExpression> is applied after the items have already been
read; the process of filtering does not consume any additional read
capacity units.

For more information, see Filter Expressions
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults)
in the I<Amazon DynamoDB Developer Guide>.



=head2 IndexName => Str

The name of a secondary index to scan. This index can be any local
secondary index or global secondary index. Note that if you use the
C<IndexName> parameter, you must also provide C<TableName>.



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
specified table or index. These attributes can include scalars, sets,
or elements of a JSON document. The attributes in the expression must
be separated by commas.

If no attribute names are specified, then all attributes will be
returned. If any of the requested attributes are not found, they will
not appear in the result.

For more information, see Accessing Item Attributes
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 ReturnConsumedCapacity => Str



Valid values are: C<"INDEXES">, C<"TOTAL">, C<"NONE">

=head2 ScanFilter => L<Paws::DynamoDB::FilterConditionMap>

This is a legacy parameter. Use C<FilterExpression> instead. For more
information, see ScanFilter
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 Segment => Int

For a parallel C<Scan> request, C<Segment> identifies an individual
segment to be scanned by an application worker.

Segment IDs are zero-based, so the first segment is always 0. For
example, if you want to use four application threads to scan a table or
an index, then the first thread specifies a C<Segment> value of 0, the
second thread specifies 1, and so on.

The value of C<LastEvaluatedKey> returned from a parallel C<Scan>
request must be used as C<ExclusiveStartKey> with the same segment ID
in a subsequent C<Scan> operation.

The value for C<Segment> must be greater than or equal to 0, and less
than the value provided for C<TotalSegments>.

If you provide C<Segment>, you must also provide C<TotalSegments>.



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

The name of the table containing the requested items; or, if you
provide C<IndexName>, the name of the table to which that index
belongs.



=head2 TotalSegments => Int

For a parallel C<Scan> request, C<TotalSegments> represents the total
number of segments into which the C<Scan> operation will be divided.
The value of C<TotalSegments> corresponds to the number of application
workers that will perform the parallel scan. For example, if you want
to use four application threads to scan a table or an index, specify a
C<TotalSegments> value of 4.

The value for C<TotalSegments> must be greater than or equal to 1, and
less than or equal to 1000000. If you specify a C<TotalSegments> value
of 1, the C<Scan> operation will be sequential rather than parallel.

If you specify C<TotalSegments>, you must also specify C<Segment>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Scan in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

