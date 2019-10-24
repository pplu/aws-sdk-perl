# Generated from json/callresult_class.tt

package Paws::DynamoDB::ScanOutput;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_ConsumedCapacity DynamoDB_Key DynamoDB_AttributeMap/;
  has ConsumedCapacity => (is => 'ro', isa => DynamoDB_ConsumedCapacity);
  has Count => (is => 'ro', isa => Int);
  has Items => (is => 'ro', isa => ArrayRef[DynamoDB_AttributeMap]);
  has LastEvaluatedKey => (is => 'ro', isa => DynamoDB_Key);
  has ScannedCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ScannedCount' => {
                                   'type' => 'Int'
                                 },
               'Items' => {
                            'class' => 'Paws::DynamoDB::AttributeMap',
                            'type' => 'ArrayRef[DynamoDB_AttributeMap]'
                          },
               'ConsumedCapacity' => {
                                       'class' => 'Paws::DynamoDB::ConsumedCapacity',
                                       'type' => 'DynamoDB_ConsumedCapacity'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LastEvaluatedKey' => {
                                       'class' => 'Paws::DynamoDB::Key',
                                       'type' => 'DynamoDB_Key'
                                     },
               'Count' => {
                            'type' => 'Int'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ScanOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => DynamoDB_ConsumedCapacity

The capacity units consumed by the C<Scan> operation. The data returned
includes the total provisioned throughput consumed, along with
statistics for the table and any indexes involved in the operation.
C<ConsumedCapacity> is only returned if the C<ReturnConsumedCapacity>
parameter was specified. For more information, see Provisioned
Throughput
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html)
in the I<Amazon DynamoDB Developer Guide>.


=head2 Count => Int

The number of items in the response.

If you set C<ScanFilter> in the request, then C<Count> is the number of
items returned after the filter was applied, and C<ScannedCount> is the
number of matching items before the filter was applied.

If you did not use a filter in the request, then C<Count> is the same
as C<ScannedCount>.


=head2 Items => ArrayRef[DynamoDB_AttributeMap]

An array of item attributes that match the scan criteria. Each element
in this array consists of an attribute name and the value for that
attribute.


=head2 LastEvaluatedKey => DynamoDB_Key

The primary key of the item where the operation stopped, inclusive of
the previous result set. Use this value to start a new operation,
excluding this value in the new request.

If C<LastEvaluatedKey> is empty, then the "last page" of results has
been processed and there is no more data to be retrieved.

If C<LastEvaluatedKey> is not empty, it does not necessarily mean that
there is more data in the result set. The only way to know when you
have reached the end of the result set is when C<LastEvaluatedKey> is
empty.


=head2 ScannedCount => Int

The number of items evaluated, before any C<ScanFilter> is applied. A
high C<ScannedCount> value with few, or no, C<Count> results indicates
an inefficient C<Scan> operation. For more information, see Count and
ScannedCount
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count)
in the I<Amazon DynamoDB Developer Guide>.

If you did not use a filter in the request, then C<ScannedCount> is the
same as C<Count>.


=head2 _request_id => Str


=cut

1;