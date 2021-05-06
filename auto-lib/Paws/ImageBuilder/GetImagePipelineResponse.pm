
package Paws::ImageBuilder::GetImagePipelineResponse;
  use Moose;
  has ImagePipeline => (is => 'ro', isa => 'Paws::ImageBuilder::ImagePipeline', traits => ['NameInRequest'], request_name => 'imagePipeline');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetImagePipelineResponse

=head1 ATTRIBUTES


=head2 ImagePipeline => L<Paws::ImageBuilder::ImagePipeline>

The image pipeline object.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

