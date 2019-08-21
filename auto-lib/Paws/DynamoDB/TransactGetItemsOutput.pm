
package Paws::DynamoDB::TransactGetItemsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::TypeLibrary qw/PawsDynamoDBConsumedCapacity PawsDynamoDBItemResponse/;
  has ConsumedCapacity => (is => 'ro', isa => ArrayRef[PawsDynamoDBConsumedCapacity]);
  has Responses => (is => 'ro', isa => ArrayRef[PawsDynamoDBItemResponse]);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'ConsumedCapacity' => {
                                                  'class' => 'Paws::DynamoDB::ConsumedCapacity',
                                                  'type' => 'ArrayRef[PawsDynamoDBConsumedCapacity]'
                                                },
                          'Responses' => {
                                           'class' => 'Paws::DynamoDB::ItemResponse',
                                           'type' => 'ArrayRef[PawsDynamoDBItemResponse]'
                                         }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::TransactGetItemsOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => ArrayRef[PawsDynamoDBConsumedCapacity]

If the I<ReturnConsumedCapacity> value was C<TOTAL>, this is an array
of C<ConsumedCapacity> objects, one for each table addressed by
C<TransactGetItem> objects in the I<TransactItems> parameter. These
C<ConsumedCapacity> objects report the read-capacity units consumed by
the C<TransactGetItems> call in that table.


=head2 Responses => ArrayRef[PawsDynamoDBItemResponse]

An ordered array of up to 25 C<ItemResponse> objects, each of which
corresponds to the C<TransactGetItem> object in the same position in
the I<TransactItems> array. Each C<ItemResponse> object contains a Map
of the name-value pairs that are the projected attributes of the
requested item.

If a requested item could not be retrieved, the corresponding
C<ItemResponse> object is Null, or if the requested item has no
projected attributes, the corresponding C<ItemResponse> object is an
empty Map.


=head2 _request_id => Str


=cut

1;