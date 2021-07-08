
package Paws::GlueDataBrew::PublishRecipe;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PublishRecipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recipes/{name}/publishRecipe');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::PublishRecipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::PublishRecipe - Arguments for method PublishRecipe on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PublishRecipe on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method PublishRecipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PublishRecipe.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $PublishRecipeResponse = $databrew->PublishRecipe(
      Name        => 'MyRecipeName',
      Description => 'MyRecipeDescription',    # OPTIONAL
    );

    # Results:
    my $Name = $PublishRecipeResponse->Name;

    # Returns a L<Paws::GlueDataBrew::PublishRecipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/PublishRecipe>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the recipe to be published, for this version of the
recipe.



=head2 B<REQUIRED> Name => Str

The name of the recipe to be published.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PublishRecipe in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

