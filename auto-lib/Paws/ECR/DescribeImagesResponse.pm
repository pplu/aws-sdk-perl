
package Paws::ECR::DescribeImagesResponse;
  use Moose;
  has ImageDetails => (is => 'ro', isa => 'ArrayRef[Paws::ECR::ImageDetail]', traits => ['NameInRequest'], request_name => 'imageDetails' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeImagesResponse

=head1 ATTRIBUTES


=head2 ImageDetails => ArrayRef[L<Paws::ECR::ImageDetail>]

A list of ImageDetail objects that contain data about the image.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<DescribeImages>
request. When the results of a C<DescribeImages> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

1;