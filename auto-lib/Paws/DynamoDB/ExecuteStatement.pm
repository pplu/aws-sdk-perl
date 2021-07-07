
package Paws::DynamoDB::ExecuteStatement;
  use Moose;
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has NextToken => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::AttributeValue]');
  has Statement => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteStatement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::ExecuteStatementOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ExecuteStatement - Arguments for method ExecuteStatement on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteStatement on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method ExecuteStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteStatement.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $ExecuteStatementOutput = $dynamodb->ExecuteStatement(
      Statement      => 'MyPartiQLStatement',
      ConsistentRead => 1,                       # OPTIONAL
      NextToken      => 'MyPartiQLNextToken',    # OPTIONAL
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
      ],    # OPTIONAL
    );

    # Results:
    my $Items     = $ExecuteStatementOutput->Items;
    my $NextToken = $ExecuteStatementOutput->NextToken;

    # Returns a L<Paws::DynamoDB::ExecuteStatementOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/ExecuteStatement>

=head1 ATTRIBUTES


=head2 ConsistentRead => Bool

The consistency of a read operation. If set to C<true>, then a strongly
consistent read is used; otherwise, an eventually consistent read is
used.



=head2 NextToken => Str

Set this value to get remaining results, if C<NextToken> was returned
in the statement response.



=head2 Parameters => ArrayRef[L<Paws::DynamoDB::AttributeValue>]

The parameters for the PartiQL statement, if any.



=head2 B<REQUIRED> Statement => Str

The PartiQL statement representing the operation to run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteStatement in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

