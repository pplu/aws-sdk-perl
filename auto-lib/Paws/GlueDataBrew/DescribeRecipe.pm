
package Paws::GlueDataBrew::DescribeRecipe;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has RecipeVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'recipeVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRecipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recipes/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::DescribeRecipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DescribeRecipe - Arguments for method DescribeRecipe on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRecipe on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method DescribeRecipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRecipe.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $DescribeRecipeResponse = $databrew->DescribeRecipe(
      Name          => 'MyRecipeName',
      RecipeVersion => 'MyRecipeVersion',    # OPTIONAL
    );

    # Results:
    my $CreateDate       = $DescribeRecipeResponse->CreateDate;
    my $CreatedBy        = $DescribeRecipeResponse->CreatedBy;
    my $Description      = $DescribeRecipeResponse->Description;
    my $LastModifiedBy   = $DescribeRecipeResponse->LastModifiedBy;
    my $LastModifiedDate = $DescribeRecipeResponse->LastModifiedDate;
    my $Name             = $DescribeRecipeResponse->Name;
    my $ProjectName      = $DescribeRecipeResponse->ProjectName;
    my $PublishedBy      = $DescribeRecipeResponse->PublishedBy;
    my $PublishedDate    = $DescribeRecipeResponse->PublishedDate;
    my $RecipeVersion    = $DescribeRecipeResponse->RecipeVersion;
    my $ResourceArn      = $DescribeRecipeResponse->ResourceArn;
    my $Steps            = $DescribeRecipeResponse->Steps;
    my $Tags             = $DescribeRecipeResponse->Tags;

    # Returns a L<Paws::GlueDataBrew::DescribeRecipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/DescribeRecipe>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the recipe to be described.



=head2 RecipeVersion => Str

The recipe version identifier. If this parameter isn't specified, then
the latest published version is returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRecipe in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

