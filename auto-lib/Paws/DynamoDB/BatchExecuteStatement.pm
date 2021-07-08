
package Paws::DynamoDB::BatchExecuteStatement;
  use Moose;
  has Statements => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::BatchStatementRequest]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchExecuteStatement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::BatchExecuteStatementOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::BatchExecuteStatement - Arguments for method BatchExecuteStatement on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchExecuteStatement on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method BatchExecuteStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchExecuteStatement.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $BatchExecuteStatementOutput = $dynamodb->BatchExecuteStatement(
      Statements => [
        {
          Statement      => 'MyPartiQLStatement',    # min: 1, max: 8192
          ConsistentRead => 1,                       # OPTIONAL
          Parameters     => [
            {
              B    => 'BlobBinaryAttributeValue',    # OPTIONAL
              BOOL => 1,                             # OPTIONAL
              BS   => [
                'BlobBinaryAttributeValue', ...      # OPTIONAL
              ],    # OPTIONAL
              L => [ <AttributeValue>, ... ],    # OPTIONAL
              M => {
                'MyAttributeName' => <AttributeValue>,    # key: max: 65535
              },    # OPTIONAL
              N  => 'MyNumberAttributeValue',    # OPTIONAL
              NS => [
                'MyNumberAttributeValue', ...    # OPTIONAL
              ],    # OPTIONAL
              NULL => 1,                           # OPTIONAL
              S    => 'MyStringAttributeValue',    # OPTIONAL
              SS   => [
                'MyStringAttributeValue', ...      # OPTIONAL
              ],    # OPTIONAL
            },
            ...
          ],    # min: 1; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Responses = $BatchExecuteStatementOutput->Responses;

    # Returns a L<Paws::DynamoDB::BatchExecuteStatementOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/BatchExecuteStatement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Statements => ArrayRef[L<Paws::DynamoDB::BatchStatementRequest>]

The list of PartiQL statements representing the batch to run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchExecuteStatement in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

