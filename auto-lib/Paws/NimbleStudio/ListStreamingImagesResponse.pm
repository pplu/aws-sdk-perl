
package Paws::NimbleStudio::ListStreamingImagesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has StreamingImages => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::StreamingImage]', traits => ['NameInRequest'], request_name => 'streamingImages');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::ListStreamingImagesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 StreamingImages => ArrayRef[L<Paws::NimbleStudio::StreamingImage>]

A collection of streaming images.


=head2 _request_id => Str


=cut

