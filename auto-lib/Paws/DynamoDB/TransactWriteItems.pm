
package Paws::DynamoDB::TransactWriteItems;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');
  has TransactItems => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::TransactWriteItem]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TransactWriteItems');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::TransactWriteItemsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::TransactWriteItems - Arguments for method TransactWriteItems on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TransactWriteItems on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method TransactWriteItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TransactWriteItems.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $TransactWriteItemsOutput = $dynamodb->TransactWriteItems(
      TransactItems => [
        {
          ConditionCheck => {
            ConditionExpression => 'MyConditionExpression',    # OPTIONAL
            Key                 => {
              'MyAttributeName' => {
                B    => 'BlobBinaryAttributeValue',
                BOOL => 1,                                      # OPTIONAL
                BS   => [ 'BlobBinaryAttributeValue', ... ],    # OPTIONAL
                L    => [ <AttributeValue>, ... ],              # OPTIONAL
                M    => {
                  'MyAttributeName' => <AttributeValue>,    # key: max: 65535
                },    # OPTIONAL
                N  => 'MyNumberAttributeValue',    # OPTIONAL
                NS => [
                  'MyNumberAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
                NULL => 1,                         # OPTIONAL
                S    => 'MyStringAttributeValue',  # OPTIONAL
                SS   => [
                  'MyStringAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
              },    # key: max: 65535
            },
            TableName                => 'MyTableName',    # min: 3, max: 255
            ExpressionAttributeNames => {
              'MyExpressionAttributeNameVariable' =>
                'MyAttributeName',                        # , value: max: 65535
            },    # OPTIONAL
            ExpressionAttributeValues => {
              'MyExpressionAttributeValueVariable' => {
                B    => 'BlobBinaryAttributeValue',
                BOOL => 1,                                      # OPTIONAL
                BS   => [ 'BlobBinaryAttributeValue', ... ],    # OPTIONAL
                L    => [ <AttributeValue>, ... ],              # OPTIONAL
                M    => {
                  'MyAttributeName' => <AttributeValue>,    # key: max: 65535
                },    # OPTIONAL
                N  => 'MyNumberAttributeValue',    # OPTIONAL
                NS => [
                  'MyNumberAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
                NULL => 1,                         # OPTIONAL
                S    => 'MyStringAttributeValue',  # OPTIONAL
                SS   => [
                  'MyStringAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
              },
            },    # OPTIONAL
            ReturnValuesOnConditionCheckFailure =>
              'ALL_OLD',    # values: ALL_OLD, NONE; OPTIONAL
          },    # OPTIONAL
          Delete => {
            Key => {
              'MyAttributeName' => {
                B    => 'BlobBinaryAttributeValue',
                BOOL => 1,                                      # OPTIONAL
                BS   => [ 'BlobBinaryAttributeValue', ... ],    # OPTIONAL
                L    => [ <AttributeValue>, ... ],              # OPTIONAL
                M    => {
                  'MyAttributeName' => <AttributeValue>,    # key: max: 65535
                },    # OPTIONAL
                N  => 'MyNumberAttributeValue',    # OPTIONAL
                NS => [
                  'MyNumberAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
                NULL => 1,                         # OPTIONAL
                S    => 'MyStringAttributeValue',  # OPTIONAL
                SS   => [
                  'MyStringAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
              },    # key: max: 65535
            },
            TableName           => 'MyTableName',             # min: 3, max: 255
            ConditionExpression => 'MyConditionExpression',   # OPTIONAL
            ExpressionAttributeNames => {
              'MyExpressionAttributeNameVariable' =>
                'MyAttributeName',    # , value: max: 65535
            },    # OPTIONAL
            ExpressionAttributeValues => {
              'MyExpressionAttributeValueVariable' => {
                B    => 'BlobBinaryAttributeValue',
                BOOL => 1,                                      # OPTIONAL
                BS   => [ 'BlobBinaryAttributeValue', ... ],    # OPTIONAL
                L    => [ <AttributeValue>, ... ],              # OPTIONAL
                M    => {
                  'MyAttributeName' => <AttributeValue>,    # key: max: 65535
                },    # OPTIONAL
                N  => 'MyNumberAttributeValue',    # OPTIONAL
                NS => [
                  'MyNumberAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
                NULL => 1,                         # OPTIONAL
                S    => 'MyStringAttributeValue',  # OPTIONAL
                SS   => [
                  'MyStringAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
              },
            },    # OPTIONAL
            ReturnValuesOnConditionCheckFailure =>
              'ALL_OLD',    # values: ALL_OLD, NONE; OPTIONAL
          },    # OPTIONAL
          Put => {
            Item => {
              'MyAttributeName' => {
                B    => 'BlobBinaryAttributeValue',
                BOOL => 1,                                      # OPTIONAL
                BS   => [ 'BlobBinaryAttributeValue', ... ],    # OPTIONAL
                L    => [ <AttributeValue>, ... ],              # OPTIONAL
                M    => {
                  'MyAttributeName' => <AttributeValue>,    # key: max: 65535
                },    # OPTIONAL
                N  => 'MyNumberAttributeValue',    # OPTIONAL
                NS => [
                  'MyNumberAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
                NULL => 1,                         # OPTIONAL
                S    => 'MyStringAttributeValue',  # OPTIONAL
                SS   => [
                  'MyStringAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
              },    # key: max: 65535
            },
            TableName           => 'MyTableName',             # min: 3, max: 255
            ConditionExpression => 'MyConditionExpression',   # OPTIONAL
            ExpressionAttributeNames => {
              'MyExpressionAttributeNameVariable' =>
                'MyAttributeName',    # , value: max: 65535
            },    # OPTIONAL
            ExpressionAttributeValues => {
              'MyExpressionAttributeValueVariable' => {
                B    => 'BlobBinaryAttributeValue',
                BOOL => 1,                                      # OPTIONAL
                BS   => [ 'BlobBinaryAttributeValue', ... ],    # OPTIONAL
                L    => [ <AttributeValue>, ... ],              # OPTIONAL
                M    => {
                  'MyAttributeName' => <AttributeValue>,    # key: max: 65535
                },    # OPTIONAL
                N  => 'MyNumberAttributeValue',    # OPTIONAL
                NS => [
                  'MyNumberAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
                NULL => 1,                         # OPTIONAL
                S    => 'MyStringAttributeValue',  # OPTIONAL
                SS   => [
                  'MyStringAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
              },
            },    # OPTIONAL
            ReturnValuesOnConditionCheckFailure =>
              'ALL_OLD',    # values: ALL_OLD, NONE; OPTIONAL
          },    # OPTIONAL
          Update => {
            Key => {
              'MyAttributeName' => {
                B    => 'BlobBinaryAttributeValue',
                BOOL => 1,                                      # OPTIONAL
                BS   => [ 'BlobBinaryAttributeValue', ... ],    # OPTIONAL
                L    => [ <AttributeValue>, ... ],              # OPTIONAL
                M    => {
                  'MyAttributeName' => <AttributeValue>,    # key: max: 65535
                },    # OPTIONAL
                N  => 'MyNumberAttributeValue',    # OPTIONAL
                NS => [
                  'MyNumberAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
                NULL => 1,                         # OPTIONAL
                S    => 'MyStringAttributeValue',  # OPTIONAL
                SS   => [
                  'MyStringAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
              },    # key: max: 65535
            },
            TableName           => 'MyTableName',             # min: 3, max: 255
            UpdateExpression    => 'MyUpdateExpression',
            ConditionExpression => 'MyConditionExpression',   # OPTIONAL
            ExpressionAttributeNames => {
              'MyExpressionAttributeNameVariable' =>
                'MyAttributeName',    # , value: max: 65535
            },    # OPTIONAL
            ExpressionAttributeValues => {
              'MyExpressionAttributeValueVariable' => {
                B    => 'BlobBinaryAttributeValue',
                BOOL => 1,                                      # OPTIONAL
                BS   => [ 'BlobBinaryAttributeValue', ... ],    # OPTIONAL
                L    => [ <AttributeValue>, ... ],              # OPTIONAL
                M    => {
                  'MyAttributeName' => <AttributeValue>,    # key: max: 65535
                },    # OPTIONAL
                N  => 'MyNumberAttributeValue',    # OPTIONAL
                NS => [
                  'MyNumberAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
                NULL => 1,                         # OPTIONAL
                S    => 'MyStringAttributeValue',  # OPTIONAL
                SS   => [
                  'MyStringAttributeValue', ...    # OPTIONAL
                ],                                 # OPTIONAL
              },
            },    # OPTIONAL
            ReturnValuesOnConditionCheckFailure =>
              'ALL_OLD',    # values: ALL_OLD, NONE; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      ClientRequestToken          => 'MyClientRequestToken',    # OPTIONAL
      ReturnConsumedCapacity      => 'INDEXES',                 # OPTIONAL
      ReturnItemCollectionMetrics => 'SIZE',                    # OPTIONAL
    );

    # Results:
    my $ConsumedCapacity = $TransactWriteItemsOutput->ConsumedCapacity;
    my $ItemCollectionMetrics =
      $TransactWriteItemsOutput->ItemCollectionMetrics;

    # Returns a L<Paws::DynamoDB::TransactWriteItemsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/TransactWriteItems>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Providing a C<ClientRequestToken> makes the call to
C<TransactWriteItems> idempotent, meaning that multiple identical calls
have the same effect as one single call.

Although multiple identical calls using the same client request token
produce the same result on the server (no side effects), the responses
to the calls may not be the same. If the C<ReturnConsumedCapacityE<gt>>
parameter is set, then the initial C<TransactWriteItems> call returns
the amount of write capacity units consumed in making the changes, and
subsequent C<TransactWriteItems> calls with the same client token
return the amount of read capacity units consumed in reading the item.

A client request token is valid for 10 minutes after the first request
that uses it completes. After 10 minutes, any request with the same
client token is treated as a new request. Do not resubmit the same
request with the same client token for more than 10 minutes or the
result may not be idempotent.

If you submit a request with the same client token but a change in
other parameters within the 10 minute idempotency window, DynamoDB
returns an C<IdempotentParameterMismatch> exception.



=head2 ReturnConsumedCapacity => Str



Valid values are: C<"INDEXES">, C<"TOTAL">, C<"NONE">

=head2 ReturnItemCollectionMetrics => Str

Determines whether item collection metrics are returned. If set to
C<SIZE>, the response includes statistics about item collections (if
any), that were modified during the operation and are returned in the
response. If set to C<NONE> (the default), no statistics are returned.

Valid values are: C<"SIZE">, C<"NONE">

=head2 B<REQUIRED> TransactItems => ArrayRef[L<Paws::DynamoDB::TransactWriteItem>]

An ordered array of up to 10 C<TransactWriteItem> objects, each of
which contains a C<ConditionCheck>, C<Put>, C<Update>, or C<Delete>
object. These can operate on items in different tables, but the tables
must reside in the same AWS account and region, and no two of them can
operate on the same item.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TransactWriteItems in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

