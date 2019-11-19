# Generated from json/callresult_class.tt

package Paws::DynamoDB::TransactWriteItemsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_ItemCollectionMetricsPerTable DynamoDB_ConsumedCapacity/;
  has ConsumedCapacity => (is => 'ro', isa => ArrayRef[DynamoDB_ConsumedCapacity]);
  has ItemCollectionMetrics => (is => 'ro', isa => DynamoDB_ItemCollectionMetricsPerTable);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ItemCollectionMetrics' => {
                                            'class' => 'Paws::DynamoDB::ItemCollectionMetricsPerTable',
                                            'type' => 'DynamoDB_ItemCollectionMetricsPerTable'
                                          },
               'ConsumedCapacity' => {
                                       'class' => 'Paws::DynamoDB::ConsumedCapacity',
                                       'type' => 'ArrayRef[DynamoDB_ConsumedCapacity]'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::TransactWriteItemsOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => ArrayRef[DynamoDB_ConsumedCapacity]

The capacity units consumed by the entire C<TransactWriteItems>
operation. The values of the list are ordered according to the ordering
of the C<TransactItems> request parameter.


=head2 ItemCollectionMetrics => DynamoDB_ItemCollectionMetricsPerTable

A list of tables that were processed by C<TransactWriteItems> and, for
each table, information about any item collections that were affected
by individual C<UpdateItem>, C<PutItem>, or C<DeleteItem> operations.


=head2 _request_id => Str


=cut

1;