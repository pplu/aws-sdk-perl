
package Paws::Personalize::ListRecipes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RecipeProvider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recipeProvider' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecipes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::ListRecipesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListRecipes - Arguments for method ListRecipes on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecipes on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method ListRecipes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecipes.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $ListRecipesResponse = $personalize->ListRecipes(
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyNextToken',    # OPTIONAL
      RecipeProvider => 'SERVICE',        # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRecipesResponse->NextToken;
    my $Recipes   = $ListRecipesResponse->Recipes;

    # Returns a L<Paws::Personalize::ListRecipesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/ListRecipes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of recipes to return.



=head2 NextToken => Str

A token returned from the previous call to C<ListRecipes> for getting
the next set of recipes (if they exist).



=head2 RecipeProvider => Str

The default is C<SERVICE>.

Valid values are: C<"SERVICE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecipes in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

