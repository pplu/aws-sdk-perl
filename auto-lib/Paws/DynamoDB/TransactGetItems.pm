
package Paws::DynamoDB::TransactGetItems;
  use Moose;
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has TransactItems => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::TransactGetItem]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TransactGetItems');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::TransactGetItemsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::TransactGetItems - Arguments for method TransactGetItems on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TransactGetItems on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method TransactGetItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TransactGetItems.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $TransactGetItemsOutput = $dynamodb->TransactGetItems(
      TransactItems => [
        {
          Get => {
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
            TableName                => 'MyTableName',    # min: 3, max: 255
            ExpressionAttributeNames => {
              'MyExpressionAttributeNameVariable' =>
                'MyAttributeName',                        # , value: max: 65535
            },    # OPTIONAL
            ProjectionExpression => 'MyProjectionExpression',    # OPTIONAL
          },

        },
        ...
      ],
      ReturnConsumedCapacity => 'INDEXES',                       # OPTIONAL
    );

    # Results:
    my $ConsumedCapacity = $TransactGetItemsOutput->ConsumedCapacity;
    my $Responses        = $TransactGetItemsOutput->Responses;

    # Returns a L<Paws::DynamoDB::TransactGetItemsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/TransactGetItems>

=head1 ATTRIBUTES


=head2 ReturnConsumedCapacity => Str

A value of C<TOTAL> causes consumed capacity information to be
returned, and a value of C<NONE> prevents that information from being
returned. No other value is valid.

Valid values are: C<"INDEXES">, C<"TOTAL">, C<"NONE">

=head2 B<REQUIRED> TransactItems => ArrayRef[L<Paws::DynamoDB::TransactGetItem>]

An ordered array of up to 10 C<TransactGetItem> objects, each of which
contains a C<Get> structure.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TransactGetItems in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

