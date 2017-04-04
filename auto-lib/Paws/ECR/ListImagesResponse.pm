
package Paws::ECR::ListImagesResponse;
  use Moose;
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Paws::ECR::ImageIdentifier]', traits => ['NameInRequest'], request_name => 'imageIds' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::ListImagesResponse

=head1 ATTRIBUTES


=head2 ImageIds => ArrayRef[L<Paws::ECR::ImageIdentifier>]

The list of image IDs for the requested repository.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListImages> request.
When the results of a C<ListImages> request exceed C<maxResults>, this
value can be used to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

1;