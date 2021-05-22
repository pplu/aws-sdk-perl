
package Paws::GlueDataBrew::CreateRecipe;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::RecipeStep]', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GlueDataBrew::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRecipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recipes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::CreateRecipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::CreateRecipe - Arguments for method CreateRecipe on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRecipe on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method CreateRecipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRecipe.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $CreateRecipeResponse = $databrew->CreateRecipe(
      Name  => 'MyRecipeName',
      Steps => [
        {
          Action => {
            Operation  => 'MyOperation',    # min: 1, max: 128
            Parameters => {
              'MyParameterName' => 'MyParameterValue'
              ,    # key: min: 1, max: 128, value: min: 1, max: 12288
            },    # OPTIONAL
          },
          ConditionExpressions => [
            {
              Condition    => 'MyCondition',         # min: 1, max: 128
              TargetColumn => 'MyTargetColumn',      # min: 1, max: 1024
              Value        => 'MyConditionValue',    # max: 1024; OPTIONAL
            },
            ...
          ],                                         # OPTIONAL
        },
        ...
      ],
      Description => 'MyRecipeDescription',          # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Name = $CreateRecipeResponse->Name;

    # Returns a L<Paws::GlueDataBrew::CreateRecipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/CreateRecipe>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the recipe.



=head2 B<REQUIRED> Name => Str

A unique name for the recipe. Valid characters are alphanumeric (A-Z,
a-z, 0-9), hyphen (-), period (.), and space.



=head2 B<REQUIRED> Steps => ArrayRef[L<Paws::GlueDataBrew::RecipeStep>]

An array containing the steps to be performed by the recipe. Each
recipe step consists of one recipe action and (optionally) an array of
condition expressions.



=head2 Tags => L<Paws::GlueDataBrew::TagMap>

Metadata tags to apply to this recipe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRecipe in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

