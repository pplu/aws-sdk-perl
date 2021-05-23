
package Paws::ECRPublic::DescribeImageTagsResponse;
  use Moose;
  has ImageTagDetails => (is => 'ro', isa => 'ArrayRef[Paws::ECRPublic::ImageTagDetail]', traits => ['NameInRequest'], request_name => 'imageTagDetails' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::DescribeImageTagsResponse

=head1 ATTRIBUTES


=head2 ImageTagDetails => ArrayRef[L<Paws::ECRPublic::ImageTagDetail>]

The image tag details for the images in the requested repository.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<DescribeImageTags>
request. When the results of a C<DescribeImageTags> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

1;