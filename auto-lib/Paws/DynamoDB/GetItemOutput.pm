
package Paws::DynamoDB::GetItemOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::TypeLibrary qw/PawsDynamoDBConsumedCapacity PawsDynamoDBAttributeMap/;
  has ConsumedCapacity => (is => 'ro', isa => PawsDynamoDBConsumedCapacity);
  has Item => (is => 'ro', isa => PawsDynamoDBAttributeMap);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'Item' => {
                                      'class' => 'Paws::DynamoDB::AttributeMap',
                                      'type' => 'PawsDynamoDBAttributeMap'
                                    },
                          'ConsumedCapacity' => {
                                                  'class' => 'Paws::DynamoDB::ConsumedCapacity',
                                                  'type' => 'PawsDynamoDBConsumedCapacity'
                                                }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GetItemOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => PawsDynamoDBConsumedCapacity

The capacity units consumed by the C<GetItem> operation. The data
returned includes the total provisioned throughput consumed, along with
statistics for the table and any indexes involved in the operation.
C<ConsumedCapacity> is only returned if the C<ReturnConsumedCapacity>
parameter was specified. For more information, see Read/Write Capacity
Mode
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html)
in the I<Amazon DynamoDB Developer Guide>.


=head2 Item => PawsDynamoDBAttributeMap

A map of attribute names to C<AttributeValue> objects, as specified by
C<ProjectionExpression>.


=head2 _request_id => Str


=cut

1;