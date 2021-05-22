
package Paws::GlueDataBrew::BatchDeleteRecipeVersionResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::RecipeVersionErrorDetail]');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::BatchDeleteRecipeVersionResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::GlueDataBrew::RecipeVersionErrorDetail>]

Errors, if any, that occurred while attempting to delete the recipe
versions.


=head2 B<REQUIRED> Name => Str

The name of the recipe that was modified.


=head2 _request_id => Str


=cut

