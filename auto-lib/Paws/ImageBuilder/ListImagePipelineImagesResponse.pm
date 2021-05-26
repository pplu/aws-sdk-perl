
package Paws::ImageBuilder::ListImagePipelineImagesResponse;
  use Moose;
  has ImageSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::ImageSummary]', traits => ['NameInRequest'], request_name => 'imageSummaryList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListImagePipelineImagesResponse

=head1 ATTRIBUTES


=head2 ImageSummaryList => ArrayRef[L<Paws::ImageBuilder::ImageSummary>]

The list of images built by this pipeline.


=head2 NextToken => Str

The next token used for paginated responses. When this is not empty,
there are additional elements that the service has not included in this
request. Use this token with the next request to retrieve additional
objects.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

