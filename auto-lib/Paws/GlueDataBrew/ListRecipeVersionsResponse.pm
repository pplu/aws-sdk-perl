
package Paws::GlueDataBrew::ListRecipeVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Recipes => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::Recipe]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::ListRecipeVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that you can use in a subsequent call to retrieve the next set
of results.


=head2 B<REQUIRED> Recipes => ArrayRef[L<Paws::GlueDataBrew::Recipe>]

A list of versions for the specified recipe.


=head2 _request_id => Str


=cut

