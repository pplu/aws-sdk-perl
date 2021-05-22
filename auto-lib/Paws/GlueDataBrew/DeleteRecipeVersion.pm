
package Paws::GlueDataBrew::DeleteRecipeVersion;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has RecipeVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'recipeVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRecipeVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recipes/{name}/recipeVersion/{recipeVersion}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::DeleteRecipeVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DeleteRecipeVersion - Arguments for method DeleteRecipeVersion on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRecipeVersion on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method DeleteRecipeVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRecipeVersion.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $DeleteRecipeVersionResponse = $databrew->DeleteRecipeVersion(
      Name          => 'MyRecipeName',
      RecipeVersion => 'MyRecipeVersion',

    );

    # Results:
    my $Name          = $DeleteRecipeVersionResponse->Name;
    my $RecipeVersion = $DeleteRecipeVersionResponse->RecipeVersion;

    # Returns a L<Paws::GlueDataBrew::DeleteRecipeVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/DeleteRecipeVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the recipe.



=head2 B<REQUIRED> RecipeVersion => Str

The version of the recipe to be deleted. You can specify a numeric
versions (C<X.Y>) or C<LATEST_WORKING>. C<LATEST_PUBLISHED> is not
supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRecipeVersion in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

