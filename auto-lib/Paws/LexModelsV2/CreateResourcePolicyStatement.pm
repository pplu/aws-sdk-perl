
package Paws::LexModelsV2::CreateResourcePolicyStatement;
  use Moose;
  has Action => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has Condition => (is => 'ro', isa => 'Paws::LexModelsV2::ConditionMap', traits => ['NameInRequest'], request_name => 'condition');
  has Effect => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'effect', required => 1);
  has ExpectedRevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'expectedRevisionId');
  has Principal => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::Principal]', traits => ['NameInRequest'], request_name => 'principal', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has StatementId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statementId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourcePolicyStatement');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policy/{resourceArn}/statements/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateResourcePolicyStatementResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateResourcePolicyStatement - Arguments for method CreateResourcePolicyStatement on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourcePolicyStatement on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateResourcePolicyStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourcePolicyStatement.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateResourcePolicyStatementResponse =
      $models - v2 -lex->CreateResourcePolicyStatement(
      Action => [
        'MyOperation', ...    # min: 5, max: 50
      ],
      Effect    => 'Allow',
      Principal => [
        {
          Arn     => 'MyPrincipalArn',        # min: 30, max: 1024; OPTIONAL
          Service => 'MyServicePrincipal',    # min: 15, max: 1024; OPTIONAL
        },
        ...
      ],
      ResourceArn => 'MyAmazonResourceName',
      StatementId => 'MyName',
      Condition   => {
        'MyConditionOperator' => {
          'MyConditionKey' => 'MyConditionValue'
          ,    # key: min: 1, max: 1024, value: min: 1, max: 1024
        },    # key: min: 1, value: max: 10
      },    # OPTIONAL
      ExpectedRevisionId => 'MyRevisionId',    # OPTIONAL
      );

    # Results:
    my $ResourceArn = $CreateResourcePolicyStatementResponse->ResourceArn;
    my $RevisionId  = $CreateResourcePolicyStatementResponse->RevisionId;

 # Returns a L<Paws::LexModelsV2::CreateResourcePolicyStatementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateResourcePolicyStatement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => ArrayRef[Str|Undef]

The Amazon Lex action that this policy either allows or denies. The
action must apply to the resource type of the specified ARN. For more
information, see Actions, resources, and condition keys for Amazon Lex
V2
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonlexv2.html).



=head2 Condition => L<Paws::LexModelsV2::ConditionMap>

Specifies a condition when the policy is in effect. If the principal of
the policy is a service principal, you must provide two condition
blocks, one with a SourceAccount global condition key and one with a
SourceArn global condition key.

For more information, see IAM JSON policy elements: Condition
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html).



=head2 B<REQUIRED> Effect => Str

Determines whether the statement allows or denies access to the
resource.

Valid values are: C<"Allow">, C<"Deny">

=head2 ExpectedRevisionId => Str

The identifier of the revision of the policy to edit. If this revision
ID doesn't match the current revision ID, Amazon Lex throws an
exception.

If you don't specify a revision, Amazon Lex overwrites the contents of
the policy with the new values.



=head2 B<REQUIRED> Principal => ArrayRef[L<Paws::LexModelsV2::Principal>]

An IAM principal, such as an IAM users, IAM roles, or AWS services that
is allowed or denied access to a resource. For more information, see
AWS JSON policy elements: Principal
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html).



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the bot or bot alias that the
resource policy is attached to.



=head2 B<REQUIRED> StatementId => Str

The name of the statement. The ID is the same as the C<Sid> IAM
property. The statement name must be unique within the policy. For more
information, see IAM JSON policy elements: Sid
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_sid.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourcePolicyStatement in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

