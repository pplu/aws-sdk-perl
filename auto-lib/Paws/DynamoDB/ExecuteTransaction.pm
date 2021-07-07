
package Paws::DynamoDB::ExecuteTransaction;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has TransactStatements => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ParameterizedStatement]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteTransaction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::ExecuteTransactionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ExecuteTransaction - Arguments for method ExecuteTransaction on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteTransaction on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method ExecuteTransaction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteTransaction.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $ExecuteTransactionOutput = $dynamodb->ExecuteTransaction(
      TransactStatements => [
        {
          Statement  => 'MyPartiQLStatement',    # min: 1, max: 8192
          Parameters => [
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
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $Responses = $ExecuteTransactionOutput->Responses;

    # Returns a L<Paws::DynamoDB::ExecuteTransactionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/ExecuteTransaction>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Set this value to get remaining results, if C<NextToken> was returned
in the statement response.



=head2 B<REQUIRED> TransactStatements => ArrayRef[L<Paws::DynamoDB::ParameterizedStatement>]

The list of PartiQL statements representing the transaction to run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteTransaction in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

