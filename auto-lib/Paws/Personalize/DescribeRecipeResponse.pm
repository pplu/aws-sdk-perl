
package Paws::Personalize::DescribeRecipeResponse;
  use Moose;
  has Recipe => (is => 'ro', isa => 'Paws::Personalize::Recipe', traits => ['NameInRequest'], request_name => 'recipe' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeRecipeResponse

=head1 ATTRIBUTES


=head2 Recipe => L<Paws::Personalize::Recipe>

An object that describes the recipe.


=head2 _request_id => Str


=cut

1;