
package Paws::LexModelsV2::DeleteResourcePolicy;
  use Moose;
  has ExpectedRevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'expectedRevisionId');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourcePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policy/{resourceArn}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DeleteResourcePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteResourcePolicy - Arguments for method DeleteResourcePolicy on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourcePolicy on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DeleteResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourcePolicy.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DeleteResourcePolicyResponse = $models - v2 -lex->DeleteResourcePolicy(
      ResourceArn        => 'MyAmazonResourceName',
      ExpectedRevisionId => 'MyRevisionId',           # OPTIONAL
    );

    # Results:
    my $ResourceArn = $DeleteResourcePolicyResponse->ResourceArn;
    my $RevisionId  = $DeleteResourcePolicyResponse->RevisionId;

    # Returns a L<Paws::LexModelsV2::DeleteResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DeleteResourcePolicy>

=head1 ATTRIBUTES


=head2 ExpectedRevisionId => Str

The identifier of the revision to edit. If this ID doesn't match the
current revision number, Amazon Lex returns an exception

If you don't specify a revision ID, Amazon Lex will delete the current
policy.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the bot or bot alias that has the
resource policy attached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourcePolicy in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

