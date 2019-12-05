
package Paws::ImageBuilder::PutImageRecipePolicyResponse;
  use Moose;
  has ImageRecipeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageRecipeArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::PutImageRecipePolicyResponse

=head1 ATTRIBUTES


=head2 ImageRecipeArn => Str

The Amazon Resource Name (ARN) of the image recipe that this policy was
applied to.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

