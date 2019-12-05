
package Paws::ImageBuilder::GetImageRecipeResponse;
  use Moose;
  has ImageRecipe => (is => 'ro', isa => 'Paws::ImageBuilder::ImageRecipe', traits => ['NameInRequest'], request_name => 'imageRecipe');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetImageRecipeResponse

=head1 ATTRIBUTES


=head2 ImageRecipe => L<Paws::ImageBuilder::ImageRecipe>

The image recipe object.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

