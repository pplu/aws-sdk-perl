
package Paws::ImageBuilder::ListImageBuildVersionsResponse;
  use Moose;
  has ImageSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::ImageSummary]', traits => ['NameInRequest'], request_name => 'imageSummaryList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListImageBuildVersionsResponse

=head1 ATTRIBUTES


=head2 ImageSummaryList => ArrayRef[L<Paws::ImageBuilder::ImageSummary>]

The list of image build versions.


=head2 NextToken => Str

The next token used for paginated responses. When this is not empty
then there are additional elements that the service that not include in
this request. Use this token with the next request to retrieve
additional object.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

