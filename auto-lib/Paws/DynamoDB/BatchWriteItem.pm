
package Paws::DynamoDB::BatchWriteItem;
  use Moose;
  has RequestItems => (is => 'ro', isa => 'Paws::DynamoDB::BatchWriteItemRequestMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchWriteItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::BatchWriteItemOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::BatchWriteItem - Arguments for method BatchWriteItem on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchWriteItem on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method BatchWriteItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchWriteItem.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
   # To add multiple items to a table
   # This example adds three new items to the Music table using a batch of three
   # PutItem requests.
    my $BatchWriteItemOutput = $dynamodb->BatchWriteItem(
      {
        'RequestItems' => {
          'Music' => [

            {
              'PutRequest' => {
                'Item' => {
                  'AlbumTitle' => {
                    'S' => 'Somewhat Famous'
                  },
                  'Artist' => {
                    'S' => 'No One You Know'
                  },
                  'SongTitle' => {
                    'S' => 'Call Me Today'
                  }
                }
              }
            },

            {
              'PutRequest' => {
                'Item' => {
                  'AlbumTitle' => {
                    'S' => 'Songs About Life'
                  },
                  'Artist' => {
                    'S' => 'Acme Band'
                  },
                  'SongTitle' => {
                    'S' => 'Happy Day'
                  }
                }
              }
            },

            {
              'PutRequest' => {
                'Item' => {
                  'AlbumTitle' => {
                    'S' => 'Blue Sky Blues'
                  },
                  'Artist' => {
                    'S' => 'No One You Know'
                  },
                  'SongTitle' => {
                    'S' => 'Scared of My Shadow'
                  }
                }
              }
            }
          ]
        }
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/BatchWriteItem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RequestItems => L<Paws::DynamoDB::BatchWriteItemRequestMap>

A map of one or more table names and, for each table, a list of
operations to be performed (C<DeleteRequest> or C<PutRequest>). Each
element in the map consists of the following:

=over

=item *

C<DeleteRequest> - Perform a C<DeleteItem> operation on the specified
item. The item to be deleted is identified by a C<Key> subelement:

=over

=item *

C<Key> - A map of primary key attribute values that uniquely identify
the item. Each entry in this map consists of an attribute name and an
attribute value. For each primary key, you must provide I<all> of the
key attributes. For example, with a simple primary key, you only need
to provide a value for the partition key. For a composite primary key,
you must provide values for I<both> the partition key and the sort key.

=back

=item *

C<PutRequest> - Perform a C<PutItem> operation on the specified item.
The item to be put is identified by an C<Item> subelement:

=over

=item *

C<Item> - A map of attributes and their values. Each entry in this map
consists of an attribute name and an attribute value. Attribute values
must not be null; string and binary type attributes must have lengths
greater than zero; and set type attributes must not be empty. Requests
that contain empty values will be rejected with a
C<ValidationException> exception.

If you specify any attributes that are part of an index key, then the
data types for those attributes must match those of the schema in the
table's attribute definition.

=back

=back




=head2 ReturnConsumedCapacity => Str



Valid values are: C<"INDEXES">, C<"TOTAL">, C<"NONE">

=head2 ReturnItemCollectionMetrics => Str

Determines whether item collection metrics are returned. If set to
C<SIZE>, the response includes statistics about item collections, if
any, that were modified during the operation are returned in the
response. If set to C<NONE> (the default), no statistics are returned.

Valid values are: C<"SIZE">, C<"NONE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchWriteItem in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

