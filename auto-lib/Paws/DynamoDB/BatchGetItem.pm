
package Paws::DynamoDB::BatchGetItem;
  use Moose;
  has RequestItems => (is => 'ro', isa => 'Paws::DynamoDB::BatchGetRequestMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::BatchGetItemOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::BatchGetItem - Arguments for method BatchGetItem on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetItem on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method BatchGetItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetItem.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    # To retrieve multiple items from a table
    # This example reads multiple items from the Music table using a batch of
    # three GetItem requests.  Only the AlbumTitle attribute is returned.
    my $BatchGetItemOutput = $dynamodb->BatchGetItem(
      {
        'RequestItems' => {
          'Music' => {
            'Keys' => [

              {
                'Artist' => {
                  'S' => 'No One You Know'
                },
                'SongTitle' => {
                  'S' => 'Call Me Today'
                }
              },

              {
                'Artist' => {
                  'S' => 'Acme Band'
                },
                'SongTitle' => {
                  'S' => 'Happy Day'
                }
              },

              {
                'Artist' => {
                  'S' => 'No One You Know'
                },
                'SongTitle' => {
                  'S' => 'Scared of My Shadow'
                }
              }
            ],
            'ProjectionExpression' => 'AlbumTitle'
          }
        }
      }
    );

    # Results:
    my $Responses = $BatchGetItemOutput->Responses;

    # Returns a L<Paws::DynamoDB::BatchGetItemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/BatchGetItem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RequestItems => L<Paws::DynamoDB::BatchGetRequestMap>

A map of one or more table names and, for each table, a map that
describes one or more items to retrieve from that table. Each table
name can be used only once per C<BatchGetItem> request.

Each element in the map of items to retrieve consists of the following:

=over

=item *

C<ConsistentRead> - If C<true>, a strongly consistent read is used; if
C<false> (the default), an eventually consistent read is used.

=item *

C<ExpressionAttributeNames> - One or more substitution tokens for
attribute names in the C<ProjectionExpression> parameter. The following
are some use cases for using C<ExpressionAttributeNames>:

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

=item *

C<Keys> - An array of primary key attribute values that define specific
items in the table. For each primary key, you must provide I<all> of
the key attributes. For example, with a simple primary key, you only
need to provide the partition key value. For a composite key, you must
provide I<both> the partition key value and the sort key value.

=item *

C<ProjectionExpression> - A string that identifies one or more
attributes to retrieve from the table. These attributes can include
scalars, sets, or elements of a JSON document. The attributes in the
expression must be separated by commas.

If no attribute names are specified, then all attributes will be
returned. If any of the requested attributes are not found, they will
not appear in the result.

For more information, see Accessing Item Attributes
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html)
in the I<Amazon DynamoDB Developer Guide>.

=item *

C<AttributesToGet> - This is a legacy parameter. Use
C<ProjectionExpression> instead. For more information, see
AttributesToGet
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html)
in the I<Amazon DynamoDB Developer Guide>.

=back




=head2 ReturnConsumedCapacity => Str



Valid values are: C<"INDEXES">, C<"TOTAL">, C<"NONE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetItem in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

