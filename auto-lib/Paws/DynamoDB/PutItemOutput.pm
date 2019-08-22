
package Paws::DynamoDB::PutItemOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_ConsumedCapacity DynamoDB_ItemCollectionMetrics DynamoDB_AttributeMap/;
  has Attributes => (is => 'ro', isa => DynamoDB_AttributeMap);
  has ConsumedCapacity => (is => 'ro', isa => DynamoDB_ConsumedCapacity);
  has ItemCollectionMetrics => (is => 'ro', isa => DynamoDB_ItemCollectionMetrics);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'Attributes' => {
                                            'class' => 'Paws::DynamoDB::AttributeMap',
                                            'type' => 'DynamoDB_AttributeMap'
                                          },
                          'ConsumedCapacity' => {
                                                  'class' => 'Paws::DynamoDB::ConsumedCapacity',
                                                  'type' => 'DynamoDB_ConsumedCapacity'
                                                },
                          'ItemCollectionMetrics' => {
                                                       'class' => 'Paws::DynamoDB::ItemCollectionMetrics',
                                                       'type' => 'DynamoDB_ItemCollectionMetrics'
                                                     }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::PutItemOutput

=head1 ATTRIBUTES


=head2 Attributes => DynamoDB_AttributeMap

The attribute values as they appeared before the C<PutItem> operation,
but only if C<ReturnValues> is specified as C<ALL_OLD> in the request.
Each element consists of an attribute name and an attribute value.


=head2 ConsumedCapacity => DynamoDB_ConsumedCapacity

The capacity units consumed by the C<PutItem> operation. The data
returned includes the total provisioned throughput consumed, along with
statistics for the table and any indexes involved in the operation.
C<ConsumedCapacity> is only returned if the C<ReturnConsumedCapacity>
parameter was specified. For more information, see Read/Write Capacity
Mode
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html)
in the I<Amazon DynamoDB Developer Guide>.


=head2 ItemCollectionMetrics => DynamoDB_ItemCollectionMetrics

Information about item collections, if any, that were affected by the
C<PutItem> operation. C<ItemCollectionMetrics> is only returned if the
C<ReturnItemCollectionMetrics> parameter was specified. If the table
does not have any local secondary indexes, this information is not
returned in the response.

Each C<ItemCollectionMetrics> element consists of:

=over

=item *

C<ItemCollectionKey> - The partition key value of the item collection.
This is the same as the partition key value of the item itself.

=item *

C<SizeEstimateRangeGB> - An estimate of item collection size, in
gigabytes. This value is a two-element array containing a lower bound
and an upper bound for the estimate. The estimate includes the size of
all the items in the table, plus the size of all attributes projected
into all of the local secondary indexes on that table. Use this
estimate to measure whether a local secondary index is approaching its
size limit.

The estimate is subject to change over time; therefore, do not rely on
the precision or accuracy of the estimate.

=back



=head2 _request_id => Str


=cut

1;