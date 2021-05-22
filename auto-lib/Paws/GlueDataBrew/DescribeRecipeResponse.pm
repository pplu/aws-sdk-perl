
package Paws::GlueDataBrew::DescribeRecipeResponse;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str');
  has PublishedBy => (is => 'ro', isa => 'Str');
  has PublishedDate => (is => 'ro', isa => 'Str');
  has RecipeVersion => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::RecipeStep]');
  has Tags => (is => 'ro', isa => 'Paws::GlueDataBrew::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DescribeRecipeResponse

=head1 ATTRIBUTES


=head2 CreateDate => Str

The date and time that the recipe was created.


=head2 CreatedBy => Str

The identifier (user name) of the user who created the recipe.


=head2 Description => Str

The description of the recipe.


=head2 LastModifiedBy => Str

The identifier (user name) of the user who last modified the recipe.


=head2 LastModifiedDate => Str

The date and time that the recipe was last modified.


=head2 B<REQUIRED> Name => Str

The name of the recipe.


=head2 ProjectName => Str

The name of the project associated with this recipe.


=head2 PublishedBy => Str

The identifier (user name) of the user who last published the recipe.


=head2 PublishedDate => Str

The date and time when the recipe was last published.


=head2 RecipeVersion => Str

The recipe version identifier.


=head2 ResourceArn => Str

The ARN of the recipe.


=head2 Steps => ArrayRef[L<Paws::GlueDataBrew::RecipeStep>]

One or more steps to be performed by the recipe. Each step consists of
an action, and the conditions under which the action should succeed.


=head2 Tags => L<Paws::GlueDataBrew::TagMap>

Metadata tags associated with this project.


=head2 _request_id => Str


=cut

