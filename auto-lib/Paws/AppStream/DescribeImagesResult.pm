
package Paws::AppStream::DescribeImagesResult;
  use Moose;
  has Images => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::Image]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeImagesResult

=head1 ATTRIBUTES


=head2 Images => ArrayRef[L<Paws::AppStream::Image>]

Information about the images.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

1;