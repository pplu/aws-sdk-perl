
package Paws::GreengrassV2::GetComponentResponse;
  use Moose;
  has Recipe => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recipe', required => 1);
  has RecipeOutputFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recipeOutputFormat', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GreengrassV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::GetComponentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Recipe => Str

The recipe of the component version.


=head2 B<REQUIRED> RecipeOutputFormat => Str

The format of the recipe.

Valid values are: C<"JSON">, C<"YAML">
=head2 Tags => L<Paws::GreengrassV2::TagMap>

A list of key-value pairs that contain metadata for the resource. For
more information, see Tag your resources
(https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html)
in the I<AWS IoT Greengrass V2 Developer Guide>.


=head2 _request_id => Str


=cut

