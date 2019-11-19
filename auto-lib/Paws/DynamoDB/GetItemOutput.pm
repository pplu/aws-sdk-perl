# Generated from json/callresult_class.tt

package Paws::DynamoDB::GetItemOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_ConsumedCapacity DynamoDB_AttributeMap/;
  has ConsumedCapacity => (is => 'ro', isa => DynamoDB_ConsumedCapacity);
  has Item => (is => 'ro', isa => DynamoDB_AttributeMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Item' => {
                           'class' => 'Paws::DynamoDB::AttributeMap',
                           'type' => 'DynamoDB_AttributeMap'
                         },
               'ConsumedCapacity' => {
                                       'type' => 'DynamoDB_ConsumedCapacity',
                                       'class' => 'Paws::DynamoDB::ConsumedCapacity'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GetItemOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => DynamoDB_ConsumedCapacity

The capacity units consumed by the C<GetItem> operation. The data
returned includes the total provisioned throughput consumed, along with
statistics for the table and any indexes involved in the operation.
C<ConsumedCapacity> is only returned if the C<ReturnConsumedCapacity>
parameter was specified. For more information, see Read/Write Capacity
Mode
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html)
in the I<Amazon DynamoDB Developer Guide>.


=head2 Item => DynamoDB_AttributeMap

A map of attribute names to C<AttributeValue> objects, as specified by
C<ProjectionExpression>.


=head2 _request_id => Str


=cut

1;