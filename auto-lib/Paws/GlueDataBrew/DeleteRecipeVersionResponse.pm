
package Paws::GlueDataBrew::DeleteRecipeVersionResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RecipeVersion => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DeleteRecipeVersionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the recipe that was deleted.


=head2 B<REQUIRED> RecipeVersion => Str

The version of the recipe that was deleted.


=head2 _request_id => Str


=cut

