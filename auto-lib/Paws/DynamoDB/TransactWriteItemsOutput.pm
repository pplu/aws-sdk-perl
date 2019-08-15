
package Paws::DynamoDB::TransactWriteItemsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Type::Utils qw/class_type/;
    my $ItemCollectionMetricsPerTable = class_type 'Paws::DynamoDB::ItemCollectionMetricsPerTable';
    my $ConsumedCapacity = class_type 'Paws::DynamoDB::ConsumedCapacity';
  
  has ConsumedCapacity => (is => 'ro', isa => ArrayRef[$ConsumedCapacity]);
  has ItemCollectionMetrics => (is => 'ro', isa => $ItemCollectionMetricsPerTable);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'ConsumedCapacity' => {
                                                  'class' => 'Paws::DynamoDB::ConsumedCapacity',
                                                  'type' => 'ArrayRef[$ConsumedCapacity]'
                                                },
                          'ItemCollectionMetrics' => {
                                                       'class' => 'Paws::DynamoDB::ItemCollectionMetricsPerTable',
                                                       'type' => '$ItemCollectionMetricsPerTable'
                                                     }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::TransactWriteItemsOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => ArrayRef[$ConsumedCapacity]

The capacity units consumed by the entire C<TransactWriteItems>
operation. The values of the list are ordered according to the ordering
of the C<TransactItems> request parameter.


=head2 ItemCollectionMetrics => $ItemCollectionMetricsPerTable

A list of tables that were processed by C<TransactWriteItems> and, for
each table, information about any item collections that were affected
by individual C<UpdateItem>, C<PutItem>, or C<DeleteItem> operations.


=head2 _request_id => Str


=cut

1;