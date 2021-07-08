
package Paws::ImageBuilder::PutContainerRecipePolicyResponse;
  use Moose;
  has ContainerRecipeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerRecipeArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::PutContainerRecipePolicyResponse

=head1 ATTRIBUTES


=head2 ContainerRecipeArn => Str

The Amazon Resource Name (ARN) of the container recipe that this policy
was applied to.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

