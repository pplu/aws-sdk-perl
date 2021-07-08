
package Paws::ImageBuilder::CreateContainerRecipeResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ContainerRecipeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerRecipeArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateContainerRecipeResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token used to make this request idempotent.


=head2 ContainerRecipeArn => Str

Returns the Amazon Resource Name (ARN) of the container recipe that the
request created.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

