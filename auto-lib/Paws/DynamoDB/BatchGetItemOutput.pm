
package Paws::DynamoDB::BatchGetItemOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Type::Utils qw/class_type/;
    my $BatchGetResponseMap = class_type 'Paws::DynamoDB::BatchGetResponseMap';
    my $BatchGetRequestMap = class_type 'Paws::DynamoDB::BatchGetRequestMap';
    my $ConsumedCapacity = class_type 'Paws::DynamoDB::ConsumedCapacity';
  
  has ConsumedCapacity => (is => 'ro', isa => ArrayRef[$ConsumedCapacity]);
  has Responses => (is => 'ro', isa => $BatchGetResponseMap);
  has UnprocessedKeys => (is => 'ro', isa => $BatchGetRequestMap);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'UnprocessedKeys' => {
                                                 'class' => 'Paws::DynamoDB::BatchGetRequestMap',
                                                 'type' => '$BatchGetRequestMap'
                                               },
                          'ConsumedCapacity' => {
                                                  'class' => 'Paws::DynamoDB::ConsumedCapacity',
                                                  'type' => 'ArrayRef[$ConsumedCapacity]'
                                                },
                          'Responses' => {
                                           'class' => 'Paws::DynamoDB::BatchGetResponseMap',
                                           'type' => '$BatchGetResponseMap'
                                         }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::BatchGetItemOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => ArrayRef[$ConsumedCapacity]

The read capacity units consumed by the entire C<BatchGetItem>
operation.

Each element consists of:

=over

=item *

C<TableName> - The table that consumed the provisioned throughput.

=item *

C<CapacityUnits> - The total number of capacity units consumed.

=back



=head2 Responses => $BatchGetResponseMap

A map of table name to a list of items. Each object in C<Responses>
consists of a table name, along with a map of attribute data consisting
of the data type and attribute value.


=head2 UnprocessedKeys => $BatchGetRequestMap

A map of tables and their respective keys that were not processed with
the current response. The C<UnprocessedKeys> value is in the same form
as C<RequestItems>, so the value can be provided directly to a
subsequent C<BatchGetItem> operation. For more information, see
C<RequestItems> in the Request Parameters section.

Each element consists of:

=over

=item *

C<Keys> - An array of primary key attribute values that define specific
items in the table.

=item *

C<ProjectionExpression> - One or more attributes to be retrieved from
the table or index. By default, all attributes are returned. If a
requested attribute is not found, it does not appear in the result.

=item *

C<ConsistentRead> - The consistency of a read operation. If set to
C<true>, then a strongly consistent read is used; otherwise, an
eventually consistent read is used.

=back

If there are no unprocessed keys remaining, the response contains an
empty C<UnprocessedKeys> map.


=head2 _request_id => Str


=cut

1;