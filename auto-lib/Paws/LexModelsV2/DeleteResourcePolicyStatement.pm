
package Paws::LexModelsV2::DeleteResourcePolicyStatement;
  use Moose;
  has ExpectedRevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'expectedRevisionId');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has StatementId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'statementId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourcePolicyStatement');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policy/{resourceArn}/statements/{statementId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DeleteResourcePolicyStatementResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteResourcePolicyStatement - Arguments for method DeleteResourcePolicyStatement on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourcePolicyStatement on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DeleteResourcePolicyStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourcePolicyStatement.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DeleteResourcePolicyStatementResponse =
      $models - v2 -lex->DeleteResourcePolicyStatement(
      ResourceArn        => 'MyAmazonResourceName',
      StatementId        => 'MyName',
      ExpectedRevisionId => 'MyRevisionId',           # OPTIONAL
      );

    # Results:
    my $ResourceArn = $DeleteResourcePolicyStatementResponse->ResourceArn;
    my $RevisionId  = $DeleteResourcePolicyStatementResponse->RevisionId;

 # Returns a L<Paws::LexModelsV2::DeleteResourcePolicyStatementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DeleteResourcePolicyStatement>

=head1 ATTRIBUTES


=head2 ExpectedRevisionId => Str

The identifier of the revision of the policy to delete the statement
from. If this revision ID doesn't match the current revision ID, Amazon
Lex throws an exception.

If you don't specify a revision, Amazon Lex removes the current
contents of the statement.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the bot or bot alias that the
resource policy is attached to.



=head2 B<REQUIRED> StatementId => Str

The name of the statement (SID) to delete from the policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourcePolicyStatement in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

