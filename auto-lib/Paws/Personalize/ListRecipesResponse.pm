
package Paws::Personalize::ListRecipesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Recipes => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::RecipeSummary]', traits => ['NameInRequest'], request_name => 'recipes' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListRecipesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token for getting the next set of recipes.


=head2 Recipes => ArrayRef[L<Paws::Personalize::RecipeSummary>]

The list of available recipes.


=head2 _request_id => Str


=cut

1;