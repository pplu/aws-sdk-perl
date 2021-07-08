
package Paws::ImageBuilder::GetContainerRecipeResponse;
  use Moose;
  has ContainerRecipe => (is => 'ro', isa => 'Paws::ImageBuilder::ContainerRecipe', traits => ['NameInRequest'], request_name => 'containerRecipe');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetContainerRecipeResponse

=head1 ATTRIBUTES


=head2 ContainerRecipe => L<Paws::ImageBuilder::ContainerRecipe>

The container recipe object that is returned.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

