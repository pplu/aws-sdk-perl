
package Paws::LexModelsV2::CreateResourcePolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourcePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policy/{resourceArn}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateResourcePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateResourcePolicy - Arguments for method CreateResourcePolicy on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourcePolicy on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourcePolicy.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateResourcePolicyResponse = $models - v2 -lex->CreateResourcePolicy(
      Policy      => 'MyPolicy',
      ResourceArn => 'MyAmazonResourceName',

    );

    # Results:
    my $ResourceArn = $CreateResourcePolicyResponse->ResourceArn;
    my $RevisionId  = $CreateResourcePolicyResponse->RevisionId;

    # Returns a L<Paws::LexModelsV2::CreateResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

A resource policy to add to the resource. The policy is a JSON
structure that contains one or more statements that define the policy.
The policy must follow the IAM syntax. For more information about the
contents of a JSON policy document, see IAM JSON policy reference
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html).

If the policy isn't valid, Amazon Lex returns a validation exception.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the bot or bot alias that the
resource policy is attached to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourcePolicy in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

