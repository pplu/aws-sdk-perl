
package Paws::ImageBuilder::StartImagePipelineExecutionResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ImageBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageBuildVersionArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::StartImagePipelineExecutionResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency token used to make this request idempotent.


=head2 ImageBuildVersionArn => Str

The Amazon Resource Name (ARN) of the image that was created by this
request.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

