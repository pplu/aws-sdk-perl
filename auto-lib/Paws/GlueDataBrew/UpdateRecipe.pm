
package Paws::GlueDataBrew::UpdateRecipe;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::RecipeStep]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRecipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recipes/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::UpdateRecipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::UpdateRecipe - Arguments for method UpdateRecipe on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRecipe on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method UpdateRecipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRecipe.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $UpdateRecipeResponse = $databrew->UpdateRecipe(
      Name        => 'MyRecipeName',
      Description => 'MyRecipeDescription',    # OPTIONAL
      Steps       => [
        {
          Action => {
            Operation  => 'MyOperation',       # min: 1, max: 128
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
      ],                                             # OPTIONAL
    );

    # Results:
    my $Name = $UpdateRecipeResponse->Name;

    # Returns a L<Paws::GlueDataBrew::UpdateRecipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/UpdateRecipe>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the recipe.



=head2 B<REQUIRED> Name => Str

The name of the recipe to be updated.



=head2 Steps => ArrayRef[L<Paws::GlueDataBrew::RecipeStep>]

One or more steps to be performed by the recipe. Each step consists of
an action, and the conditions under which the action should succeed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRecipe in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

