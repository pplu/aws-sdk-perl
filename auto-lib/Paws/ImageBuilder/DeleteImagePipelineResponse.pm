
package Paws::ImageBuilder::DeleteImagePipelineResponse;
  use Moose;
  has ImagePipelineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imagePipelineArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::DeleteImagePipelineResponse

=head1 ATTRIBUTES


=head2 ImagePipelineArn => Str

The Amazon Resource Name (ARN) of the image pipeline that was deleted.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

